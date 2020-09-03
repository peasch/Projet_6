<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lister les secteurs</title>
    <meta name="viewport" content="width=device-width, intial-scale=1"/>
    <meta charset="ISO-8859-1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
    <link href="/css/styles.css" rel="stylesheet">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat+Subrayada&family=Raleway&display=swap"
          rel="stylesheet">
</head>
<body>
<%@ include file="../header.jsp" %>
<section id="accueil-image">
    <div class="wrapper">
        <h2><strong>secteur ajouté </strong><span class="red-dot">!</span></h2>
        <div class="clear"></div>
    </div>
</section>
<section class="page-section cta" style="text-align: center; margin: 30px 0">
    <div class="container">
        <div class="heading">
            <h2>Description de <br><strong>${ spot.name } </strong><span class="red-dot">:</span></h2>
            <div class="black-divider"></div>
        </div>
        <div class="row">
            <div class="col-12 col-md-6" style="margin: auto 0">
                <p>
                    <strong>Adresse </strong><span class="red-dot">: </span>${ spot.adress }<br>
                    <strong>Latitude </strong><span class="red-dot">: </span>${spot.latitude}<br>
                    <strong>Longitude </strong><span class="red-dot">: </span>${ spot.longitude }<br>
                    <strong>Spot proposé par </strong><span class="red-dot">: </span>${spot.user.getUserName()}<br>

                </p>
            </div>
            <div class="col-12 col-md-6">
                <c:choose>
                    <c:when test="${spot.officialLade==true}">
                        <div style="background:url('/photos/icons8-warranty-96.png')no-repeat center; height: 150px;">
                            <p style="font-family: 'Montserrat Subrayada', 'Raleway', sans-serif; ">Spot Officiel
                                LADE<span class="red-dot">!</span></p>
                        </div>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.user.getMember()==true && spot.officialLade!=true}">
                        <div>
                            <a href="/spot/${spot.id}/approuve" class="btn btn-outline-secondary btn-circle btn-sm">
                                <i class="fa fa-hand-o-right" aria-hidden="true"> Approuver ce
                                    spot
                                    ?</i></a>
                        </div>
                    </c:when>
                    <c:when test="${roleAdmin==true && spot.officialLade==true}">
                        <div>
                            <a href="/spot/${spot.id}/downgrade"
                               class="btn btn-outline-secondary btn-circle btn-sm">
                                <i class="fa fa-hand-o-down" aria-hidden="true"> Rétrograder ce
                                    spot
                                    ?</i></a>
                        </div>
                    </c:when>
                </c:choose>
            </div>
        </div>
    </div>
    <div style="margin-top: 30px">
        <a href="/spots" class="btn btn-outline-secondary btn " role="button" aria-pressed="true">
            revenir à la liste des spots </a>
    </div>
</section>
<section class="testage">
    <div class="container">
        <div class="heading">
            <h2>Secteurs<span class="red-dot">:</span></h2>
            <div class="white-divider"></div>
        </div>
        <div class="row" style="justify-content: center">
            <c:forEach var="sector" items="${ sectors }">
                <div class="col-12 col-md-6 col-lg-4">
                    <h4><a href="/sector/${sector.id}" value="${ sector.name }" style="color: snow">${ sector.name }</a>
                    </h4>
                    <p>${sector.description}</p>
                </div>
            </c:forEach>

        </div>
        <a href="/spots/${spot.id}/sector/add" class="btn btn-outline-light" role="button"
           aria-pressed="true">Ajouter un secteur </a>
    </div>
</section>
<section id="steps">
    <div class="heading">
        <h2>commentaires à propos de ce spot<span class="red-dot">:</span></h2>
        <div class="black-divider"></div>
    </div>

    <div class="container" style="text-align: center">
        <c:forEach var="commentaire" items="${comments}">
            <div class="row">
                <div class="col-lg-5" style="padding-left: 10px">
                    <h6>commentaire de ${commentaire.user.getUserName()}, ${commentaire.date}</h6>
                    <p style="background-color: white">"${commentaire.text}"</p>
                </div>
                <div class="col-lg-2">
                    <c:choose>
                        <c:when test="${sessionScope.user.getUserName()==commentaire.user.getUserName()}">
                            <a href="/comment/${commentaire.id}/modify" class="btn btn-outline-secondary btn-sm "
                               role="button"
                               aria-pressed="true"><i class="fa fa-eraser" aria-hidden="true"></i></a>
                            <a href="/comment/${commentaire.id}/delete" class="btn btn-outline-secondary btn-sm "
                               role="button"
                               aria-pressed="true"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                        </c:when>
                        <c:when test="${roleAdmin==true}">
                            <a href="/comment/${commentaire.id}/delete" class="btn btn-outline-secondary btn-sm "
                               role="button"
                               aria-pressed="true"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                        </c:when>
                    </c:choose>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="black-divider"></div>
    <div class="container" style="text-align: center">
        <c:choose>
            <c:when test="${spot.user.getUserName()!=userName}">
                <div>
                    <form method="post" action="/spots/${spot.id}/comment/add">
                        <fieldset>
                            <label for="text"> Rédiger un commentaire <span class="red-dot">:</span></label><br>
                            <textarea name="text" id="text" rows="5" cols="50"></textarea>
                            <br>
                            <input type="submit" value="Envoyer" style="margin-bottom: 30px"/>
                        </fieldset>
                    </form>

                </div>
            </c:when>
        </c:choose>
    </div>
</section>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>
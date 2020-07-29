<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>description du spot </title>
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
        <h2>Description de<br><strong> ${ spot.name }</strong><span class="red-dot">.</span></h2>
        <div class="clear"></div>
    </div>
</section>
<section class="page-section cta">
    <div class="container">
        <div class="row align-content-center">
            <div class="col-lg-2">
            </div>
            <div class=card>
                <div class="card-body">
                    <h5 class="card-title"> description du spot :</h5>
                    <p class="card-text">
                        <c:out value="Nom : ${ spot.name }"/><br>
                        <c:out value="Adresse : ${ spot.adress }"/><br>
                        <c:out value=" Latitude : ${spot.latitude}"/><br>
                        <c:out value=" Longitude : ${ spot.longitude }"/><br>
                        <c:out value="spot proposé par : ${spot.user.getUserName()}"/><br>
                        <br>
                        <br>
                        <c:choose>
                            <c:when test="${spot.officialLade==true}">
                                <i class="fa fa-check-square-o" aria-hidden="true" style="color: orangered"> Spot Officiel LADE!</i>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${sessionScope.user.getMember()==true && spot.officialLade!=true}">
                                <a href="/spot/${spot.id}/approuve" class="btn btn-outline-secondary btn-circle btn-sm"><i class="fa fa-hand-o-right" aria-hidden="true" style="color:orangered">Approuver ce spot ?</i></a><br>

                            </c:when>
                            <c:when test="${roleAdmin==true && spot.officialLade==true}">
                                <a href="/spot/${spot.id}/downgrade" class="btn btn-outline-secondary btn-circle btn-sm"><i class="fa fa-hand-o-down" aria-hidden="true" style="color:orangered">Rétrograder ce spot ?</i></a>

                            </c:when>
                        </c:choose>
                    </p>
                </div>
            </div>
            <div class="card offset-2">
                <div class="card-body">
                    <h5 class="card-title">liste des secteurs :</h5>
                    <p class="card-text">
                    <ul>
                        <c:forEach var="sector" items="${ sectors }">
                            <li>
                                <a href="/sector/${sector.id}"><c:out
                                        value="${ sector.name } : ${sector.description}"/></a>
                            </li>
                        </c:forEach>
                    </ul>
                    <a href="/spots/${spot.id}/sector/add" class="btn btn-outline-primary btn " role="button"
                       aria-pressed="true">Ajouter un secteur </a>
                    </p>

                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6 offset-3">
            <a href="/spots" class="btn btn-outline-secondary btn " role="button" aria-pressed="true">
                revenir à la liste des spots </a>
        </div>
    </div>
</section>

<section class="page-section cta">
    <header>
        <div class="container">
            <div class="row">
                <h3><span>commentaires</span></h3>
            </div>
        </div>
    </header>
    <c:forEach var="commentaire" items="${comments}">
        <div class="container">
            <div class="row">
                <div class="col-lg-5" style="padding-left: 10px">
                    <h6>commentaire de ${commentaire.user.getUserName()}, le ${commentaire.date}</h6>
                    <p style="background-color: white">"${commentaire.text}"</p>
                </div>
                <div class="col-lg-2">
                    <c:choose>
                        <c:when test="${sessionScope.user.getUserName()==commentaire.user.getUserName()}">
                            <a href="/comment/${commentaire.id}/modify" class="btn btn-outline-secondary btn-sm " role="button"
                               aria-pressed="true"><i class="fa fa-eraser" aria-hidden="true"></i></a>
                            <a href="/comment/${commentaire.id}/delete" class="btn btn-outline-secondary btn-sm " role="button"
                               aria-pressed="true"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                        </c:when>
                        <c:when test="${roleAdmin==true}">
                            <a href="/comment/${commentaire.id}/delete" class="btn btn-outline-secondary btn-sm " role="button"
                               aria-pressed="true"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                        </c:when>
                    </c:choose>
                </div>
            </div>
        </div>
    </c:forEach>


    <c:choose>
        <c:when test="${spot.user.getUserName()!=userName}">
        <div class="wrapper">
            <div class="card-body">
                <p class="card-text">
                <form method="post" action="/spots/${spot.id}/comment/add">
                    <fieldset>
                        <label for="text">Saisissez votre commentaire sur le spot :</label><br>
                        <textarea name="text" id="text" rows="5" cols="50"/></textarea>
                        <br>
                        <input type="submit" value="Envoyer"/>
                    </fieldset>
                </form>
                </p>
            </div>
        </div>
        </c:when>
    </c:choose>
</section>

<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>
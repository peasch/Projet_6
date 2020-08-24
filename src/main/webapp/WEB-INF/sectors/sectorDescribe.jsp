<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>description du secteur</title>
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
        <h2>Secteur <strong> ${ sector.name }</strong><span class="red-dot">.</span></h2>
        <div class="clear"></div>
    </div>
</section>
<section id="spotList">
    <div class="container">
        <div class="heading">
            <h2>Description de <br><strong>${ sector.name } </strong><span class="red-dot">:</span></h2>
            <div class="black-divider"></div>
        </div>
        <div class="row">
            <div class="col-12 col-md-6" style="margin: auto 0">
                <p>
                    <strong>Nom </strong><span class="red-dot">: </span>${sector.name  }<br>
                    <strong>Une brève description </strong><span class="red-dot">: </span><br>${sector.description }<br>
                </p>
            </div>
            <div class="col-12 col-md-6 ">
                <article style="background-image: url('/photos/escalade_2.jpg');float:left">
                    <div class="overlay">
                        <h4><a href="/spots/${spot.id}"> Spot :<br>${ spot.name }<span class="red-dot">.</span></a></h4>
                        <p><small>Région : ${spot.region}<br>Pays: ${spot.country}</small></p>

                    </div>
                </article>
            </div>
        </div>
    </div>

</section>
<section class="testage">
    <div class="container">
        <div class="heading">
            <h2>Voies<span class="red-dot">:</span></h2>
            <div class="white-divider"></div>
        </div>
        <div class="row" style="justify-content: center">
            <c:forEach var="route" items="${ routes }">
                <div class="col-4 col-md-3 col-lg-2">
                    <h4><a href="/route/${route.id}" value="${route.id}" style="color: snow">${route.id}</a>
                    </h4>
                </div>
            </c:forEach>

        </div>
        <a href="/sector/${sector.id}/route/add" class="btn btn-outline-light" role="button"
           aria-pressed="true">Ajouter une voie</a>
    </div>
</section>
<section id="steps" style="text-align: center">
    <div style="margin: 30px auto">
        <div class="black-divider" style="margin: 20px auto"></div>
        <a href="/spots/${spot.id}" class="btn btn-outline-dark" role="button" aria-pressed="true">
            revenir au spot </a>
        <a href="/spots" class="btn btn-outline-dark " role="button" aria-pressed="true">
            revenir à la liste des spots </a>
        <div class="black-divider" style="margin: 20px auto"></div>
    </div>
</section>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>
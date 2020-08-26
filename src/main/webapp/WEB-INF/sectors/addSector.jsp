<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter un Spot</title>
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
        <h4>Vous allez ajouter un secteur de ${spot.name} <br><strong>à la base de données !</strong><span
                class="red-dot">!</span></h4>
        <div class="clear"></div>
    </div>
</section>
<section id="spotList">
    <div class="container">
        <div class="heading">
            <h2>Saisissez les informations du secteur<span class="red-dot">:</span></h2>
            <div class="black-divider"></div>
        </div>
        <div class="row" style="margin:0 0 ">
            <div class="col-12 col-md-6 ">
                <form method="post" action="/spots/${spotId}/sector/add">

                    <fieldset>
                        <label for="name" style="font-family: 'Montserrat Subrayada', 'Raleway', sans-serif;">Quel est
                            le nom du secteur ?</label><br>
                        <input type="text" name="name" id="name" placeholder="nom..."/><br>

                        <label for="description" style="font-family: 'Montserrat Subrayada', 'Raleway', sans-serif;">description
                            du secteur ?</label><br>
                        <textarea name="description" id="description" rows="5" cols="50"
                                  placeholder="description..."></textarea><br>

                        <input type="submit" value="Envoyer"/>
                    </fieldset>
                </form>
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
        <div style="text-align: center">
            <a href="/spots/${spot.id}" class="btn btn-outline-dark" role="button" aria-pressed="true">
                revenir au spot </a>
        </div>
    </div>
</section>

<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

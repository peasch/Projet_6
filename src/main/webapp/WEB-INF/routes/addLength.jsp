<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter une longueur</title>
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
        <h4>Vous allez ajouter une longueur à la voie  <br>
            <strong>${route.sectorRouteId} </strong><span class="red-dot">!</span></h4>
        <div class="clear"></div>
    </div>
</section>
<section id="spotList">
    <div class="container">
        <div class="heading">
            <h2>Saisissez les informations de la longueur<span class="red-dot">:</span></h2>
            <div class="black-divider"></div>
        </div>
        <div class="row" style="margin:0 0 ">
            <div class="col-12 col-md-6 ">
                <form method="post" action="/route/${route.id}/length/add">

                    <fieldset>
                        <label for="distance" style="font-family: 'Montserrat Subrayada', 'Raleway', sans-serif;">Quel est
                            la distance de la longueur ?</label><br>
                        <input type="number" min="1" max="30" step="1" name="distance" id="distance" /> mètre(s)<br>

                        <label for="rating" style="font-family: 'Montserrat Subrayada', 'Raleway', sans-serif;">quel est sa cotation ?<br>
                            (un chiffre de 5 à 9, et eventuellement une lettre de A à C+</label><br>
                        <select name="rating" id="rating" >
                            <option value="5">5</option>
                            <option value="5+">5+</option>
                            <option value="6a">6a</option>
                            <option value="6a+">6a+</option>
                            <option value="6b">6b</option>
                            <option value="6b+">6b+</option>
                            <option value="6c">6c</option>
                            <option value="6c+">6c+</option>
                            <option value="7a">7a</option>
                            <option value="7a+">7a+</option>
                            <option value="7b">7b</option>
                            <option value="7b+">7b+</option>
                            <option value="7c">7c</option>
                            <option value="7c+">7c+</option>
                            <option value="8a">8a</option>
                            <option value="8a+">8a+</option>
                            <option value="8b">8b</option>
                            <option value="8b+">8b+</option>
                            <option value="8c">8c</option>
                            <option value="8c+">8c+</option>
                            <option value="9a">9a</option>
                        </select><br>
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

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
        <h4>Vous allez ajouter un spot à la base de données</strong><span class="red-dot">!</span></h4>
        <div class="clear"></div>
    </div>
</section>
<section class="page-section cta">
    <div class="heading" style="text-align: center;justify-content: center">
        <h2> Saisissez les informations du spot <span class="red-dot">:</span></h2>
        <div class="black-divider"></div>
    </div>
    <div class="row" style="margin:0 0 ">
        <div class="col-lg-8 offset-2">
            <form method="post" action="/spots/added" style="margin-top: 20px">

                <legend><u></u></legend>

                <label for="name"><u>Quel est son nom ?</u></label><br>
                <input type="text" name="name" id="name" placeholder="nom..." style="margin-left: 10px"/><br>

                <label for="adress"><u>Quel est son adresse ?</u></label><br>
                <input type="text" name="adress" id="adress" placeholder="adresse..." style="margin-left: 10px"/><br>

                <label for="region"><u>Quel est sa région ?</u></label><br>
                <c:forEach var="region" items="${ regions }">
                    <input type="radio" name="region" id="region" value="${region}" style="margin-right: 5px"/>
                    <label for="${region}">${region}</label>
                </c:forEach><br>
                <input type="radio" name="region" id="region" value="">Autre : <br><input type="text" name="otherRegion" id="otherRegion"
                                                                                 placeholder="région..."
                                                                                 style="margin-left: 10px"/><br>

                <label for="country"><u>Quel est son pays ?</u></label><br>
                <c:forEach var="country" items="${ countries }">
                    <input type="radio" name="country" id="country" value="${country}" style="margin-right: 5px"/>
                    <label for="${country}">${country}</label>
                </c:forEach><br>
                <input type="radio" name="country" id="country" value="">Autre : <br><input type="text" name="otherCountry"
                                                                                   id="otherCountry" placeholder="pays..."
                                                                                   style="margin-left: 10px"/><br>

                <label for="latitude"><u>Quelle est sa latitude ?</u> (Aidez-vous de google map)</label><br>
                <input type="text" name="latitude" id="latitude" placeholder="latitude..."
                       style="margin-left: 10px"/><br>

                <label for="longitude"><u>Quel est sa longitude ?</u></label><br>
                <input type="text" name="longitude" id="longitude" placeholder="longitude..."
                       style="margin-left: 10px"/><br>

                <input type="submit" value="Envoyer" style="margin: 20px;"/>

            </form>
        </div>
    </div>
</section>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

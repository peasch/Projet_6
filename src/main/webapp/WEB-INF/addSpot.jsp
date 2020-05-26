<%--
  Created by IntelliJ IDEA.
  User: peasc
  Date: 29/03/2020
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un Spot</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<h1>Vous allez ajouter un spot à la base de données !</h1>

<form method="post" action="addedSpot">
    <fieldset>
        <legend> Saisissez les informations du spot :</legend>

        <label for="name">Quel est le nom du spot ?</label><br>
        <input type="text" name="name" id="name"/><br>

        <label for="adress">Quel est l'adresse du spot ?</label><br>
        <input type="text" name="adress" id="adress"/><br>

        <label for="latitude">Quelle est la latitude du spot ? ( aidez-vous de google map)</label><br>
        <input type="text" name="latitude" id="latitude"/><br>

        <label for="longitude">Quel est la longitude du spot ?</label><br>
        <input type="text" name="longitude" id="longitude"/><br>


        <input type="submit" value="Envoyer" />
    </fieldset>
</form>
</body>
</html>

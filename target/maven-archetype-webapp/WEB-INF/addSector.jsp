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
<h1>Vous allez ajouter un secteur de ${spot.name} à la base de données !</h1>


<form method="post" action="/AddSectorServlet">
    <select name="spotId" id="spotId">
    <option value="${spot.spotId}" selected>${spot.name} ${spot.spotId}</option></select>
    <fieldset>
        <legend> Saisissez les informations du secteur :</legend>

        <label for="nom">Quel est le nom du secteur ?</label><br>
        <input type="text" name="nom" id="nom"/><br>

        <label for="description">description du secteur ?</label><br>
        <input type="text" name="description" id="description"/><br>

        <input type="submit" value="Envoyer" />
    </fieldset>

</form>
</body>
</html>

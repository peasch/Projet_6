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


<form method="post" action="/spots/${spotId}/sector/add">

    <fieldset>
        <legend> Saisissez les informations du secteur :</legend>

        <label for="name">Quel est le nom du secteur ?</label><br>
        <input type="text" name="name" id="name"/><br>

        <label for="description">description du secteur ?</label><br>
        <input type="text" name="description" id="description"/><br>

        <input type="submit" value="Envoyer" />
    </fieldset>

</form>
<%@ include file="footer.jsp" %>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: peasc
  Date: 09/04/2020
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>connexion</title>
</head>
<body>
<%@ include file="navigation.jsp" %>

<form method="post" action="/ConnexionServlet">
    <fieldset>
        <legend> connectez-vous :</legend>

        <label for="Username">Nom d'utilisateur ? </label><br>
        <input type="text" name="Username" id="Username"/><br>

        <label for="password">Mot de passe ?</label><br>
        <input type="password" name="password" id="password"/><br>

        <input type="submit" value="Envoyer" />
    </fieldset>
</form>
</body>
</html>

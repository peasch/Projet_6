<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Inscription</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../navigation.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <form method="post" action="registered">
                <fieldset>
                    <legend> Saisissez vos coordonnées :</legend>

                    <label for="nom">Nom ?</label><br>
                    <input type="text" name="nom" id="nom"/><br>

                    <label for="prenom">Prénom ?</label><br>
                    <input type="text" name="prenom" id="prenom"/><br>

                    <label for="username">Nom d'utilisateur ? </label><br>
                    <input type="text" name="username" id="username"/><br>

                    <label for="email">email ?</label><br>
                    <input type="email" name="email" id="email"/><br>

                    <label for="password">Mot de passe ?</label><br>
                    <input type="password" name="password" id="password"/><br>

                    <input type="submit" value="Envoyer"/>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

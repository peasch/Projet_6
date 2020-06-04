<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>connexion</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<section class="content-section text-center">
    <div class="row">
        <div class="col-lg-8 mx-auto">
            <form method="post" action="login">
                <fieldset>
                    <legend> connectez-vous :</legend>

                    <label for="username">Nom d'utilisateur ? </label><br>
                    <input type="text" name="username" id="username"/><br>

                    <label for="password">Mot de passe ?</label><br>
                    <input type="password" name="password" id="password"/><br>

                    <input type="submit" value="Envoyer"/>
                </fieldset>
            </form>
        </div>
    </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>

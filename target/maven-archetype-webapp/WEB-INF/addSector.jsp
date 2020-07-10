<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter un Spot</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="jumbotron">
        <h3>Vous allez ajouter un secteur de ${spot.name} à la base de données !</h3>
    </div>
    <div class="row">
        <div class="col-lg-12 offset-lg-1">
            <form method="post" action="/spots/${spotId}/sector/add">

                <fieldset>
                    <legend> Saisissez les informations du secteur :</legend>

                    <label for="name">Quel est le nom du secteur ?</label><br>
                    <input type="text" name="name" id="name"/><br>

                    <label for="description">description du secteur ?</label><br>
                    <textarea name="description" id="description" rows="5" cols="50"/>
                    </textarea><br>

                    <input type="submit" value="Envoyer"/>
            </fieldset>
            </form>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>

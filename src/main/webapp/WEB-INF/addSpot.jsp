<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Ajouter un Spot</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="jumbotron">
        <h3>Vous allez ajouter un spot à la base de données !</h3>
    </div>
</div>
<section class="page-section cta">
    <div class="row">
        <div class="col-lg-8 offset-2">
            <form method="post" action="/spots/added">
                <fieldset>
                    <legend> Saisissez les informations du spot :</legend>

                    <label for="name">Quel est son nom ?</label><br>
                    <input type="text" name="name" id="name"/><br>

                    <label for="adress">Quel est son adresse ?</label><br>
                    <input type="text" name="adress" id="adress"/><br>

                    <label for="latitude">Quelle est sa latitude ? ( aidez-vous de google map)</label><br>
                    <input type="text" name="latitude" id="latitude"/><br>

                    <label for="longitude">Quel est sa longitude ?</label><br>
                    <input type="text" name="longitude" id="longitude"/><br>

                    <input type="submit" value="Envoyer"/>
                </fieldset>
            </form>
        </div>
    </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>

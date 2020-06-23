<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un Spot</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
</body>
</html>

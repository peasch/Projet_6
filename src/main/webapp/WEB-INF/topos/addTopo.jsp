<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter un Spot</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../navigation.jsp" %>
<div class="container">
    <div class="jumbotron">
        <h3>Vous allez ajouter un topo à la base de données!</h3>
    </div>
    <div class="row">
        <div class="col-lg-8 offset-2">
            <form method="post" action="/topos/added">
                <fieldset>
                    <legend> Saisissez les informations du topo:</legend>

                    <label for="name">Quel est son nom ?</label><br>
                    <input type="text" name="name" id="name"/><br>

                    <label for="apercu">Une description du topo ?</label><br>
                    <textarea  name="apercu" id="apercu" rows="5" cols="50"/></textarea>
                    <br>

                    <label for="parution">Quelle est sa date de parution ?</label><br>
                    <input type="text" name="parution" id="parution"/><br>

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

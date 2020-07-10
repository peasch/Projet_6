<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>connecté</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container jumbo">

    <div class="jumbotron">
        <form method="post" action="/comment/${commentaire.id}/modified">
            <fieldset>
                <label for="text">modifier le commentaire :</label><br>
                <textarea name="text" id="text" rows="5" cols="50">${commentaire.text}</textarea>
                <br>
                <input type="submit" value="Envoyer"/>
            </fieldset>
        </form>
    </div>
</div>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>

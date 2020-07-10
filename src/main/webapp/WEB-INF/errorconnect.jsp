<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>faux !</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>
<c:choose>
    <c:when test="${exist==false}">
<div class="container jumbo">
    <div class="jumbotron">
        <h4>Ce nom d'utilisateur n'éxiste pas.</h4><br>
        <h6>veuillez réessayer, ou vous enregistrer.</h6>

            <a href="/connexion" class="btn btn-outline-primary btn-sm" role="button" aria-pressed="true">Réessayer</a>
            <a href="/registration" class="btn btn-outline-secondary btn-sm " role="button" aria-pressed="true">Inscription</a>
    </div>
</div>
    </c:when>
    <c:otherwise>
<div class="container jumbo">
    <div class="jumbotron">
        <h4>
            Désolé, ces noms d'utilisateur et mot de passe ne correspondent pas ! </h4>

            <a href="/connexion" class="btn btn-outline-primary btn-sm" role="button" aria-pressed="true">Réessayer !</a>
    </div>
</div>
    </c:otherwise>
</c:choose>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>

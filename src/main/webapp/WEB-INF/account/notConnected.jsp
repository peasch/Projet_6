<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>faux !</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<section id="accueil-image">
    <div class="wrapper">
        <div class="row" style="display: flex;flex-wrap: wrap;justify-content: center">
            <div class="col-12 col-md-6 col-lg-4">
                <h4><strong>ERREUR</strong><span class="red-dot">!</span></h4>
                <h6 style="text-align: center">Il faut d'abord vous connecter pour accéder au contenu !<span class="red-dot">.</span></h6><br>
            </div>
        </div>
        <div class="row" style="display: flex;flex-wrap: wrap;justify-content: center">
            <a href="/connexion" class="btn btn-secondary btn-sm" role="button" aria-pressed="true">Réessayer</a>
            <a href="/registration" class="btn btn-secondary btn-sm " role="button"
               aria-pressed="true">Inscription</a>
        </div>
    </div>
    </div>
</section>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

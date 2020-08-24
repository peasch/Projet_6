<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>connecté</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<section id="accueil-image">
    <div class="wrapper">
        <h4>Liste <br><strong> des spots</strong><span class="red-dot">.</span></h4>
        <div class="clear"></div>
    </div>
</section>
<div class="container jumbo">
    <div class="jumbotron">
            <h4>
                 Vous avez promus ${user.userName} membre des amis de l'escalade !
            </h4>
        <a href="/administration" class="btn btn-outline-secondary btn-sm " role="button"
           aria-pressed="true">retour administration</a>
    </div>
</div>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

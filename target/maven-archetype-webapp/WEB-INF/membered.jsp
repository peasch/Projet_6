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
            <h4>
                 Vous avez promus ${user.userName} membre des amis de l'escalade !
            </h4>
        <a href="/administration" class="btn btn-outline-secondary btn-sm " role="button"
           aria-pressed="true">retour administration</a>
    </div>
</div>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>

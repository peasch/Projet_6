<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>connecté</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../navigation.jsp" %>
<div class="container jumbo">
    <div class="jumbotron">
        <c:choose>
            <c:when test="${user.getUserName()==poster.getUserName()}">
                <h4> Votre commentaire a bien été supprimé. </h4>
            </c:when>
            <c:otherwise>
                <h4>Le commentaire de ${poster.getUserName()} a bien été supprimé.</h4>
            </c:otherwise>
        </c:choose>

        <a href="/spots/${spot.id}" class="btn btn-outline-secondary" role="button" aria-pressed="true">
            revenir au spot </a>
    </div>
</div>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

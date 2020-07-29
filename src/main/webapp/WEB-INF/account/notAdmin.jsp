<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>faux !</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../navigation.jsp" %>
<p>
    <c:choose>
        <c:when test="${role.equals(member)}">
            Désolé, il faut être membre des amis de l'escalade pour approuver un spot !
        </c:when>
        <c:otherwise>
    Désolé, il faut être administrateur pour accéder à cette zone !
    </c:otherwise>
    </c:choose>
    <a href="/connexion" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Réessayer !</a>
</p>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

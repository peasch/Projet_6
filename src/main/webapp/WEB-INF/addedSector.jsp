<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lister les secteurs</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>
<h1>Voici la liste des secteurs de ${spot.name} ! </h1>
<h3> Adresse  : ${spot.adress}</h3>
<h3>Latitude  : ${spot.latitude}</h3>
<h3>Longitude : ${spot.longitude}</h3>
<p>liste des secteurs : </p>
<ul>
    <c:forEach var="sector" items="${ sectors }">
        <li><c:out value="${ sector.name } : ${sector.description}"/>
        </li>
    </c:forEach>

</ul>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>
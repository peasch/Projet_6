<%--
  Created by IntelliJ IDEA.
  User: peasc
  Date: 29/03/2020
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lister les secteurs</title>
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
</body>
</html>
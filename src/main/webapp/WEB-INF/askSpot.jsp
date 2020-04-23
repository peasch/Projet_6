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
<h1>Voici la liste des spots ! </h1>

<form method="post" action="/AskSpotServlet">
    <p>
        <label for="spotId"> Dans quel spot, voulez-vous ajouter un secteur?</label><br />
        <select name="spotId" id="spotId">
            <c:forEach var="spot" items="${spots}">
                <option value="${spot.spotId}">${spot.spotId} : ${spot.name}</option>
            </c:forEach>
        </select>

        <input type="submit" value="Envoyer" />
    </p>
</form>

</body>
</html>

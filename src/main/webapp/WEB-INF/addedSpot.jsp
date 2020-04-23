<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>spot ajouté</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<h1>liste des spots mise à jour</h1>
<ul>
        <c:forEach var="spot" items="${ spots }">
            <li><c:out value="${spot.spotId} ${ spot.name } ${spot.adress}, ${spot.latitude}, ${spot.longitude},"/>
                <c:if test="${!empty spot.contributor}"><c:out value="ajouté par ${spot.contributor}"></c:out></c:if>
            </li>
        </c:forEach>

    </ul>

</body>
</html>

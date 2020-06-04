<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>spot ajouté</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<h1>Le spot a bien été ajouté !</h1>
<ul>
    <li><c:out value="${spot.id} ${ spot.name } ${spot.adress}, ${spot.latitude}, ${spot.longitude},"/>
        <c:out value="ajouté par ${userName}"/>
    </li>


</ul>
<%@ include file="footer.jsp" %>
</body>
</html>

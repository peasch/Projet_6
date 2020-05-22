<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css"/>
    <title> Lister les spots</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="row">


        <div class="col-md-12">
            <div class="row">
                <article class=col-md-6">
                    <h2>Liste des spots : </h2>
                    <ul>
                        <c:forEach var="spot" items="${ spots }">
                            <li><c:out value="${spot.id} : ${ spot.name } || ${spot.adress}"/>
                            </li>
                        </c:forEach>
                    </ul>
                </article>
            </div>
        </div>
    </div>
</div>
</body>
</html>
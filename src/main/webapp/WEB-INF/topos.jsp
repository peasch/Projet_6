<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <h3>Liste des topos : </h3>
                    <ul>
                        <c:forEach var="topo" items="${ topos }">
                            <li><a href="/topos/${topo.id}" ><c:out value="${topo.id} : ${ topo.name }"/></a>
                            </li>
                        </c:forEach>
                    </ul>
                </article>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
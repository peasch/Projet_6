<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>description du topo</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="row align-content-center">
        <div class="col-lg-2 offset-lg-1">
        </div>
        <div class=card>
            <div class="card-body">
                <h5 class="card-title"> description du Topo:</h5>
                <p class="card-text">
                    <c:out value="Nom : ${ topo.name }"/><br>
                    <c:out value="description : ${ topo.apercu }"/><br>
                    <c:out value=" date de parution : ${topo.parution}"/><br>
                    <c:out value="topo proposé par : ${user.userName}"/><br>
                </p>
            </div>
        </div>
        <c:choose>
        <c:when test="${user.userName != owner.userName }">
        <div class="card offset-lg-1">
            <div class="card-body off">
                <h5 class="card-title"></h5>
                <p class="card-text">
                <a href="#" class="btn btn-outline-primary btn-block active" role="button" aria-pressed="true">
                    Réserver ce topo </a>
                </p>
            </div>
        </div>
        </c:when>
        </c:choose>
    </div>
    <div class="row">
        <div class="col-lg-8 offset-2">
            <a href="/topos" class="btn btn-outline-primary btn-block active" role="button" aria-pressed="true">
                revenir à la liste des topos  </a>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
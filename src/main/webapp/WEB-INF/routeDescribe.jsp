<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>description de la voie</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="row align-content-center">
        <div class="col-lg-2">
        </div>
        <div class=card>
            <div class="card-body">
                <h5 class="card-title"> description du secteur et de la voie :</h5>
                <p class="card-text">
                    <c:out value="Nom : ${ sector.name }"/><br>
                    <c:out value="Description : ${ sector.description }"/><br>
                    <c:out value="voie numéro : ${route.id}"/><br>
                </p>
            </div>
        </div>
        <div class="col-lg-1">
        </div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">liste des longueurs de la voie :</h5>
                <p class="card-text">
                <ul>
                    <c:forEach var="length" items="${ lengthes }">
                        <li>
                            <c:out value="${ length.lentgh} mètres, cotation : ${length.rating}"/><br>
                        </li>
                    </c:forEach>
                </ul>
                <a href="/sector/${sector.id}/route/add" class="btn btn-outline-primary btn-block active" role="button"
                   aria-pressed="true">
                    Ajouter une longueur </a>
                </p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-8 offset-2">
            <a href="/sector/${sector.id}" class="btn btn-outline-primary btn-block active" role="button" aria-pressed="true">
                revenir au secteur </a>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>
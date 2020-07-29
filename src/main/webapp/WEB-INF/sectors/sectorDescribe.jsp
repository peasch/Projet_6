<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>description du secteur</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../navigation.jsp" %>
<div class="container">
    <div class="row align-content-center">
        <div class="col-lg-2">
        </div>
        <div class=card>
            <div class="card-body">
                <h5 class="card-title"> description du secteur :</h5>
                <p class="card-text">
                    <c:out value="Nom : ${ sector.name }"/><br>
                    <c:out value="Description  : ${ sector.description }"/><br>

                </p>
            </div>
        </div>
        <div class="card offset-2">
            <div class="card-body off">
                <h5 class="card-title">liste des voies :</h5>
                <p class="card-text">
                <ul>
                    <c:forEach var="route" items="${ routes }">
                        <li><a href="/route/${route.id}">
                            <c:out value="${ route.id }"/></a>

                        </li>
                    </c:forEach>
                </ul>
                <a href="/sector/${sector.id}/route/add" class="btn btn-outline-primary btn-block active" role="button" aria-pressed="true">
                    Ajouter une voie </a>
                </p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-8 offset-2">
            <a href="/spots/${spot.id}" class="btn btn-outline-primary btn- active" role="button" aria-pressed="true">
                revenir au spot </a>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>description du spot</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<section class="page-section cta">
    <div class="container">
        <div class="row align-content-center">
            <div class="col-lg-2">
            </div>
            <div class=card>
                <div class="card-body">
                    <h5 class="card-title"> description du spot :</h5>
                    <p class="card-text">
                        <c:out value="Nom : ${ spot.name }"/><br>
                        <c:out value="Adresse : ${ spot.adress }"/><br>
                        <c:out value=" Latitude : ${spot.latitude}"/><br>
                        <c:out value=" Longitude : ${ spot.longitude }"/><br>
                        <c:out value="Site officiel des amis  : ${ spot.officialLade }"/><br>
                        <c:out value="spot proposé par : ${user.userName}"/><br>
                    </p>
                </div>
            </div>
            <div class="card offset-2">
                <div class="card-body">
                    <h5 class="card-title">liste des secteurs :</h5>
                    <p class="card-text">
                    <ul>
                        <c:forEach var="sector" items="${ sectors }">
                            <li><a href="/sector/${sector.id}"><c:out
                                    value="${ sector.name } : ${sector.description}"/></a>
                            </li>
                        </c:forEach>
                    </ul>
                    <a href="/spots/${spot.id}/sector/add" class="btn btn-outline-primary btn-block " role="button"
                       aria-pressed="true">
                        Ajouter un secteur </a>

                    </p>

                </div>
            </div>
        </div>
    </div>

<div class="row">
    <div class="col-lg-6 offset-3">
        <a href="/spots" class="btn btn-outline-secondary btn-block " role="button" aria-pressed="true">
            revenir à la liste des spots </a>
    </div>
</div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>
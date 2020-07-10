<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>spot ajouté</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">

</div>
<div class="row">
    <div class="col-lg-8 offset-2">
        <div class=card>
            <div class="card-body">
                <h5 class="card-title"> Le topo a bien été ajouté par ${user.userName}:</h5>
                <p class="card-text">
                <ul>
                    <li><c:out value="${topo.id} ${ topo.name } ${topo.apercu}, ${topo.parution}"/>
                    </li>
                </ul>
                </p>
            </div>
        </div>
    </div>
<div class="container">
    <a href="/topos" class="btn btn-outline-primary btn-block active" role="button" aria-pressed="true">
        revenir à la liste des topos </a>

</div>
</div>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>

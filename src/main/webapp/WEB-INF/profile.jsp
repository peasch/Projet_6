<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>profil de ${user.userName}</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="row align-content-center">
        <div class="col-lg-2">
        </div>
        <div class=card>
            <div class="card-body">
                <h5 class="card-title"> Informations utilisateur :</h5>
                <p class="card-text">
                    <c:out value="Nom : ${ user.name }"/><br>
                    <c:out value="prénom : ${ user.firstName }"/><br>
                    <c:out value="Nom d'utilisateur : ${user.userName}"/><br>

                </p>
            </div>
        </div>

        <div class="card offset-lg-2">
            <div class="card-body">
                <c:choose>
                    <c:when test="${ size==0}"><h5 class="card-title"> Vous n'avez enregistré aucun topo </h5></c:when>
                    <c:when test="${ size==1}"><h5 class="card-title"> topo proposé par ${user.userName} :</h5></c:when>
                    <c:otherwise><h5 class="card-title"> topos proposés par ${user.userName} :</h5></c:otherwise>
                </c:choose>
                <p class="card-text">
                    <c:choose>
                    <c:when test="${ size>0}">
                <ul>
                    <c:forEach var="topo" items="${ topos }">
                        <li><a href="/topos/${topo.id}"><c:out value=" ${ topo.name }"/></a>
                        </li>
                    </c:forEach>
                </ul>
                </c:when>
                </c:choose>
                </p>
            </div>
        </div>

        </article>
    </div>
    <div class="row">

    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
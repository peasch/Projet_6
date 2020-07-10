<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>connecté</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container jumbo">
    <div class="jumbotron">

           <c:choose>
               <c:when test="${approuve==true}">
               <h4>Félicitations ${sessionScope.userName}, vous avez approuvé le spot comme Officiel LADE !</h4></c:when>
               <c:when test="${approuve==false}">
                   <h4>Le statut de spot officiel LADE a bien été retiré !</h4></c:when>
               <c:when test="${impossible==true}">
                   <h4>Le spot n'était pas considéré parmi les officiels LADE. Impossible de le rétrograder.</h4>
               </c:when>
           </c:choose>
        <a href="/spots/${spot.id}" class="btn btn-outline-primary btn- active" role="button" aria-pressed="true">
            revenir au spot </a>

    </div>
</div>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>

<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>connect�</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../navigation.jsp" %>
<div class="container jumbo">
    <div class="jumbotron">

           <c:choose>
               <c:when test="${approuve==true}">
               <h4>F�licitations ${sessionScope.userName}, vous avez approuv� le spot comme Officiel LADE !</h4></c:when>
               <c:when test="${approuve==false}">
                   <h4>Le statut de spot officiel LADE a bien �t� retir� !</h4></c:when>
               <c:when test="${impossible==true}">
                   <h4>Le spot n'�tait pas consid�r� parmi les officiels LADE. Impossible de le r�trograder.</h4>
               </c:when>
           </c:choose>
        <a href="/spots/${spot.id}" class="btn btn-outline-primary btn- active" role="button" aria-pressed="true">
            revenir au spot </a>

    </div>
</div>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

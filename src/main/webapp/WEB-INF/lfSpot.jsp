<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Rechercher un Spot</title>
    <meta charset="ISO-8859-1"/>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container">
    <div class="jumbotron">
        <h3>Rechercher un spot<span class="red-dot">.</span> </h3>
    </div>
</div>
<section class="research">
    <h4>Selectionnez vos crières de recherche<span class="red-dot">.</span></h4>
    <div class="wrapper">
        <ul>
            <li id="research-1">
                <h6>Pays :</h6>
               <c:forEach var="region" items="${ regions }">
                   <input type="checkbox" name="region" id="region" /> <label for="${region}">${region}</label><br />
               </c:forEach>
            </li>
            <!--<li id="research-2">
               <%-- <c:forEach var="spot" items="${ratings }">
                    <input type="checkbox" name="rating" id="rating" /> <label for="${spot.rating}">${spot.rating}</label><br />
                </c:forEach>--%>
            </li>-->

        </ul>
    </div>
</section>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>

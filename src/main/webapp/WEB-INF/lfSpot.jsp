<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Ajouter un Spot</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="jumbotron">
        <h3>Rechercher un spot </h3>
    </div>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <fieldset>
                <legend>rechercher un spot parmi les endroits suivants :</legend>
                <form method="post" action="/spots/${spotId}">
                    <label for="spotId"></label><br />
                    <p>
                        <select name="spotId" id="spotId">
                            <c:forEach var="spot" items="${ spots }">
                                <option value="${spot.id}"> ${ spot.name }</option>
                            </c:forEach>
                        </select>
                        <input type="submit" value="Envoyer" />
                    </p>
                </form>

            </fieldset>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>

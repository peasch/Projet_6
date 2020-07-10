<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title> Lister les spots</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="header.jsp" %>
<section class="page-section cta">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="row">
                    <div class="cta-inner text-center rounded">
                        <h2 class="section-heading mb-4"><span class="section-heading-upper">Liste des spots :</span></h2>
                        <p class="mb-0 text-center">
                        <ul>
                            <c:forEach var="spot" items="${ spots }">
                                <li><a href="/spots/${spot.id}" ><c:out value="${spot.id} : ${ spot.name }"/></a>
                                </li>
                            </c:forEach>
                        </ul>
                        </p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>
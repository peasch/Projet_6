<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css"/>
    <title> Lister les spots</title>
</head>
<body>
<%@ include file="navigation.jsp" %>

<section class="page-section cta">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-2 mx-auto text-center">
                <div class="row">
                    <div class="cta-inner text-center rounded">
                        <h2 class="section-heading mb-4"><span class="section-heading-upper">Liste des topos</span></h2>
                        <p class="mb-0 text-center">
                        <ul>
                            <c:forEach var="topo" items="${ topos }">
                                <li><a href="/topos/${topo.id}"><c:out value="${topo.id} : ${ topo.name }"/></a>
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
</body>
</html>
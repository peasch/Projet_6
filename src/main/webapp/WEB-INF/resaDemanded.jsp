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
                        <h2 class="section-heading mb-4"><span class="section-heading-upper">Reservation :</span></h2>
                        <p class="mb-0 text-center">
                            <c:choose>
                               <c:when test="${resa.accepted==null}">
                        La demande de réservation a été effectuée.
                            Vous allez être contacté par le propriétaire du topo.</c:when>
                                <c:when test="${resa.accepted==true}">
                                    La demande a été accepté, le demandeur du topo va vous contacter.
                                </c:when>
                                <c:when test="${resa.accepted==false}">
                                    La demande a été refusée. Renouvelez la demande plus tard, ou essayez un autre topo.
                                </c:when>
                            </c:choose>
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
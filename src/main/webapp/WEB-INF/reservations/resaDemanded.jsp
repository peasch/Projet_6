<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Demande de réservation</title>
    <meta charset="ISO-8859-1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
    <link href="/css/styles.css" rel="stylesheet">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat+Subrayada&family=Raleway&display=swap"
          rel="stylesheet">
</head>
<body>
<%@ include file="../header.jsp" %>
<section id="accueil-image">
    <div class="wrapper">
        <h4>Liste <br><strong> des spots</strong><span class="red-dot">.</span></h4>
        <div class="clear"></div>
    </div>
</section>
<section class="page-section cta" style="height: 300px">
    <div class="container">
        <div class="row" style="justify-content: center">
            <div class="col-12" style="text-align: center">
                <div class="heading">
                    <h2>Reservation du topo<br><strong> ${ topo.name } </strong><span class="red-dot">.</span></h2>
                    <div class="black-divider"></div>
                </div>
                <p>
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
                <div class="black-divider" style="margin-bottom: 20px"></div>
                <div class="row" style="justify-content: center">
                    <div class="col-12" style="text-align: center">
                        <a href="/topos" class="btn btn-outline-dark" role="button" aria-pressed="true" style="margin: 20px 0">
                            revenir à la liste des topos  </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>
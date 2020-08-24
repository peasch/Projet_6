<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>description du topo</title>
    <meta name="viewport" content="width=device-width, intial-scale=1"/>
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
        <h4>Vous allez ajouter un spot à la base de données</strong><span class="red-dot">!</span></h4>
        <div class="clear"></div>
    </div>
</section>
<div class="container">
    <div class="row align-content-center">
        <div class="col-lg-2 offset-lg-1">
        </div>
        <div class=card>
            <div class="card-body">
                <h5 class="card-title"> description du Topo:</h5>
                <p class="card-text">
                    <c:out value="Nom : ${ topo.name }"/><br>
                    <c:out value="description : ${ topo.apercu }"/><br>
                    <c:out value=" date de parution : ${topo.parution}"/><br>
                    <c:out value="topo proposé par : ${topo.owner.getUserName()}"/><br>
                </p>
            </div>
        </div>
        <c:choose>
        <c:when test="${user.userName != owner.userName }">
        <div class="card offset-lg-1">
            <div class="card-body off">
                <h5 class="card-title"></h5>
                <p class="card-text">
                <a href="/topos/${topo.id}/resa" class="btn btn-outline-primary btn-block active" role="button" aria-pressed="true">
                    Réserver ce topo </a>
                </p>
            </div>
        </div>
        </c:when>
        </c:choose>
    </div>
    <div class="row">
        <div class="col-lg-8 offset-2">
            <a href="/topos" class="btn btn-outline-primary btn-block active" role="button" aria-pressed="true">
                revenir à la liste des topos  </a>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>
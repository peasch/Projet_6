<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8"/>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/style.css"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i"/>

</head>
<body>
<h2 class="text-center text-white d-none d-lg-block site-heading">
    <span class="site-heading-lower">LES AMIS DE L'ESCALADE</span></h2>
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light  " style="background-color: white; background-opacity: 0.9;">
        <div class="container">
            <a class="navbar-brand" href="/home">L-A-D-E</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <c:choose>
            <c:when test="${ sessionScope.userName!=null}">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="/login" id="spotDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Spots
                        </a>
                        <div class="dropdown-menu" aria-labelledby="spotDropdown">
                            <a class="dropdown-item" href="/spots">Consulter un spot</a>
                            <a class="dropdown-item" href="/spots/add">Enregistrer un spot</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="/topos" id="topoDropdown" role="button"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">Topos</a>
                        <div class="dropdown-menu" aria-labelledby="topoDropdown">
                            <a class="dropdown-item" href="/topos">Consulter la liste des topos</a>
                            <a class="dropdown-item" href="/topos/add">Enregistrer un topo</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="sectorDropdown" role="button"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Rechercher
                        </a>
                        <div class="dropdown-menu" aria-labelledby="sectorDropdown">
                            <a class="dropdown-item" href="/lfSpot">Un spot</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/lfSector">Un secteur</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/lfRoute">Une voie</a>

                        </div>
                    </li>
                </ul>
                <a href="/profile" class="btn btn-outline-secondary btn-circle btn-sm"><span
                        class="fa fa-user"></span> ${sessionScope.userName}</a>
                <a href="/disconnect" class="btn btn-outline-secondary btn-circle btn-sm"><span
                        class="fa fa-user"></span> <i style="font-size:18px" class="fa">&#xf08b;</i></a>
                </c:when>

                <c:otherwise>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                        </ul>
                        <a href="/connexion" class="btn btn-outline-secondary btn-sm " role="button"
                           aria-pressed="true">Connexion</a>
                        <a href="/registration" class="btn btn-outline-secondary btn-sm " role="button"
                           aria-pressed="true">Inscription</a>
                    </div>
                </c:otherwise>
                </c:choose>

            </div>
        </div>
    </nav>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>

    
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>

    
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>

</body>

</html>

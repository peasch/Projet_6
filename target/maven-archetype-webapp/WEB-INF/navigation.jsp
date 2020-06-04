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
</head>
<body>
<div class="container">
    <h1 class="text-center text-black-50 d-none d-lg-block site-heading">
        <span class="text-primary site-heading-upper mb-3">Bienvenue chez nous ! Mathieu le beau-gosse</span><br>
        <span class="site-heading-lower">LES AMIS DE L'ESCALADE</span>
    </h1>
</div>
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
        <div class="container-fluid">
            <a class="navbar-brand" href="/home">L-A-D-E</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <c:choose>
            <c:when test="${ sessionScope.userName!=null}">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <!-- <li class="nav-item">
                         <a class="nav-link" href="ShowSpotServlet">Spots</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="ShowSectorServlet">Secteurs</a>
                     </li>-->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="login" id="spotDropdown" role="button"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Spots
                        </a>
                        <div class="dropdown-menu" aria-labelledby="spotDropdown">
                            <a class="dropdown-item" href="/spots">Consulter un spot</a>
                            <a class="dropdown-item" href="/spots/add">Enregistrer un spot</a>
                        </div>
                    </li>
                    <!--<li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="sectorDropdown" role="button"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Secteurs
                        </a>
                        <div class="dropdown-menu" aria-labelledby="sectorDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>-->
                </ul>
                <button class="btn btn-outline-primary btn-circle btn-sm"><span
                        class="fa fa-user"></span> ${sessionScope.userName}
                </button>
                <a href="/disconnect" class="btn btn-outline-secondary btn-circle btn-sm"><span
                        class="fa fa-user"></span> <i
                        style="font-size:18px" class="fa">&#xf08b;</i></a>
                </c:when>

                <c:otherwise>

                    <a href="/connexion" class="btn btn-outline-primary btn-sm " role="button"
                       aria-pressed="true">Connexion</a>
                    <a href="/registration" class="btn btn-outline-secondary btn-sm " role="button"
                       aria-pressed="true">Inscription</a>
                </c:otherwise>
                </c:choose>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-primary btn-sm" type="submit"><span
                            class="glyphicon glyphicon-eye-open"></span>Search
                    </button>
                </form>
            </div>
        </div>
    </nav>
</div>
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>

</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary">
    <a class="navbar-brand" href="Index">L-A-D-E</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="ShowSpotServlet">Spots</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ShowSectorServlet">Secteurs</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AddSpotServlet">Ajout spot</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AddSectorServlet">Ajout secteur</a>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="Index" id="spotDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Spots
                </a>
                <div class="dropdown-menu" aria-labelledby="spotDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="Index" id="sectorDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Secteurs
                </a>
                <div class="dropdown-menu" aria-labelledby="sectorDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
        </ul>
        <c:if test="${!empty sessionScope.userName}"><span class="navbar-text">
            ${sessionScope.userName}
        </span></c:if>
        <c:if test="${empty sessionScope.userName}">
        <a href="ConnexionServlet" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Connexion</a>
        <a href="RegistrationServlet" class="btn btn-secondary btn-sm active" role="button" aria-pressed="true">Inscription</a></c:if>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-primary btn-sm" type="submit"><span class="glyphicon glyphicon-eye-open"></span>Search</button>
        </form>
    </div>
</nav>
</body>
</html>

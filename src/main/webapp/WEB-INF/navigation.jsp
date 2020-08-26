<nav class="navbar navbar-expand-lg navbar-light" style="background-color: white">
    <div class="container">
        <a class="navbar-brand" href="/home">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <c:choose>
        <c:when test="${ sessionScope.userName!=null && sessionScope.user.admin==true}">
        <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
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
                <li class="nav-item" role="button">
                    <a class="nav-link" href="/lfSpot">Rechercher</a>
                </li>

                <li class="nav-item dropdown" style="margin-left:40%">
                    <a class="nav-link dropdown-toggle" href="/login" id="adminDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Administration
                    </a>
                    <div class="dropdown-menu" aria-labelledby="adminDropdown">
                        <a class="dropdown-item" href="/userList">Gestion des utilisateurs</a>

                    </div>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item" role="button">
                    <a href="/profile" class="nav-link"><span class="fa fa-user"></span> ${sessionScope.userName}</a>
                </li>
                <li class="nav-item" role="button">
                    <a href="/disconnect" class="nav-link"><span class="fa fa-user"></span> <i style="font-size:18px"
                                                                                               class="fa">&#xf08b;</i></a>
                </li>
            </ul>
        </div>
            </c:when>
            <c:when test="${ sessionScope.userName!=null}">
        <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav mlr-auto">
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
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Topos</a>
                        <div class="dropdown-menu" aria-labelledby="topoDropdown">
                            <a class="dropdown-item" href="/topos">Consulter la liste des topos</a>
                            <a class="dropdown-item" href="/topos/add">Enregistrer un topo</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/lfSpot">Rechercher</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item" role="button">
                        <a href="/profile" class="nav-link"><span class="fa fa-user"></span> ${sessionScope.userName}
                        </a>
                    </li>
                    <li class="nav-item" role="button">
                        <a href="/disconnect" class="nav-link"><span class="fa fa-user"></span> <i
                                style="font-size:18px" class="fa">&#xf08b;</i></a>
                    </li>
                </ul>
        </div>
            </c:when>
            <c:otherwise>
        <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item" role="button">
                        <a class="nav-link" href="/connexion">Connexion</a>
                    </li>
                    <li class="nav-item" role="button">
                        <a class="nav-link" href="/registration">Inscription</a>
                    </li>
                </ul>
        </div>
            </c:otherwise>
            </c:choose>
</nav>

<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>faux !</title>
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

<c:choose>
    <c:when test="${exist==false}">
        <section id="accueil-image">
            <div class="wrapper">
                <div class="row" style="display: flex;flex-wrap: wrap;justify-content: center">
                    <div class="col-12 col-md-6 col-lg-4">
                        <h4>Ce nom d'utilisateur n'éxiste pas<span class="red-dot">!</span></h4><br>
                        <h6 style="text-align: center">veuillez réessayer, ou vous enregistrer<span class="red-dot">.</span></h6><br>
                    </div>
                </div>
                <div class="row" style="display: flex;flex-wrap: wrap;justify-content: center">
                    <a href="/connexion" class="btn btn-secondary btn-sm" role="button" aria-pressed="true">Réessayer</a>
                    <a href="/registration" class="btn btn-secondary btn-sm " role="button"
                       aria-pressed="true">Inscription</a>
                </div>
            </div>
            </div>
        </section>
    </c:when>
    <c:otherwise>
        <section id="accueil-image">
            <div class="wrapper">
                <div class="row" style="display: flex;flex-wrap: wrap;justify-content: center">
                    <div class="col-12 col-md-6 col-lg-4">
                        <h4>désolé <span class="red-dot">!</span></h4><br>
                        <p>ces noms d'utilisateur et mot de passe ne correspondent pas<span class="red-dot">!</span>
                        </p><br>
                    </div>
                </div>
                <div class="row" style="display: flex;flex-wrap: wrap;justify-content: center">
                    <a href="/connexion" class="btn btn-secondary btn-sm" role="button"
                       aria-pressed="true">Réessayer</a>
                </div>

            </div>
        </section>
    </c:otherwise>
</c:choose>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

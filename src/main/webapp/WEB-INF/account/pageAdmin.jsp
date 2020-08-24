<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

    <title> Administration du site</title>
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
<section id="accueil-image" style="height: 300px">
    <div class="wrapper">
        <h2>Gestion <br><strong> des rôles utilisateurs</strong><span class="red-dot">.</span></h2>
        <div class="clear"></div>
    </div>
</section>
<section id="userList">
    <div class="container">
        <div class="row">
            <c:forEach var="user" items="${ userList }">
                <div class="col-12 col-md-6 col-lg-3">
                    <article class="article">
                        <div class="overlay">
                            <h4><a href="/profil/${user.getId()}"style="color:black">${ user.getUserName() }</a></h4>
                            <p><small>nom: ${user.getName()}<br>
                                Prénom: ${user.getFirstName()}<br>
                                Email: <a href="mailto:${user.getEmail()} "><br>${user.getEmail()}</a><br>
                            </small></p>
                            <div class="bottom-overlay">
                                <c:choose>
                                    <c:when test="${user.getMember()!=true}">
                                        <a href="/user/${user.getId()}/upgrade"
                                           class="btn btn-outline-secondary btn-sm "
                                           role="button"
                                           aria-pressed="true" style="float:bottom"><i class="fa fa-handshake-o"
                                                                                       aria-hidden="true"></i>
                                            promouvoir</a>
                                    </c:when>
                                    <c:when test="${user.getMember()==true}">
                                        <a href="/user/${user.getId()}/upgrade"
                                           class="btn btn-outline-secondary btn-sm " role="button" aria-pressed="true"
                                           style="float:bottom ">
                                            <i class="fa fa-handshake-o" aria-hidden="true"></i>retrograder</a>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                    </article>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="clear"></div>
</section>

<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>
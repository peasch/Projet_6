<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title> Lister les topos</title> <meta charset="ISO-8859-1"/>
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
        <h2>Liste des Topos</strong><span class="red-dot">.</span></h2>
        <div class="clear"></div>
    </div>
</section>
<section id="spotList">
    <div class="container">
        <div class="black-divider"></div>
        <div class="row" style="justify-content: center">
            <c:forEach var="topo" items="${ topos }">
                <div class="col-12 col-md-6 col-lg-4">
                    <article style="background-image: url('/photos/escalade_4.jpg');height: 400px">
                    <div class="overlay">
                        <h4><a href="/topos/${topo.id}/resa">Nom: ${topo.name} <span class="red-dot"> .</span></a></h4>
                        <p><small><br> R�gion: ${topo.region}<br>Pays: ${topo.country}
                        </small></p>
                        <p><small>Parution : ${topo.parution}</small></p>
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

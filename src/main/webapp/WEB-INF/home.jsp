<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenue chez les amis de l'escalade</title>
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
<%@ include file="header.jsp" %>
<div class="clear"></div>
<section id="accueil-image" style="height:500px">
    <div class="wrapper">
        <h2>la communauté<br><strong> de l'escalade</strong><span class="red-dot">.</span></h2>
        <div class="clear"></div>
    </div>
</section>
<section id="steps">
    <div class="container"></div>
       <div class="row" style="margin: 80px 0;display: flex;flex-wrap: wrap;justify-content: center">
            <div class="col-12  col-md-6 col-lg-3" id="step-1" style=" width: 32%;float: left; padding-top: 140px;text-align: center;margin-right: 10px;">
                <h4>Rencontrer<span class="red-dot">.</span></h4>
                <p>Une famille de fans d'escalade, tout comme vous! </p>
            </div>
            <div class="col-12 col-md-6 col-lg-3" id="step-2" style=" width: 32%;float: left; padding-top: 140px;text-align: center;margin-right: 10px;">
                <h4>Partager<span class="red-dot">.</span></h4>
                <p>Vous avez des spots à nous faire découvrir ? Enregistrez-les pour que les amis en profitent
                    !</p>
            </div>
            <div class="col-12 col-md-6 col-lg-3" id="step-3" style=" width: 32%;float: left; padding-top: 140px;text-align: center;margin-right: 10px;">
                <h4>Echanger<span class="red-dot">.</span></h4>
                <p>Vous avez des topos dont vous voulez en faire profiter ? Nous vous mettons en relation pour le
                    prêt !</p>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</section>
<section id="lasts">
    <div class="wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <article style="background: url('/photos/climb1.jpg');float:left;">
                        <div class="overlay">
                            <h4>dernier Spot proposé <span class="red-dot">...</span></h4>
                            <p><small>Nom: ${lastSpot.name}<br> Région: ${lastSpot.region}<br>Pays: ${lastSpot.country}
                            </small></p>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6">
                    <article style="background-image: url('/photos/escalade_4.jpg');float: right">
                        <div class="overlay">
                            <h4>dernier topo proposé <span class="red-dot">...</span></h4>
                            <p><small>Nom: ${lastTopo.name}<br> Région: ${lastTopo.region}<br>Pays: ${lastTopo.country}
                            </small></p>
                            <p><small>Parution : ${lastTopo.parution}</small></p>
                        </div>
                    </article>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</section>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>

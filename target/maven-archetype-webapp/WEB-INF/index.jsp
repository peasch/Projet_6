<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css"/>
    <title>Bienvenue chez les amis de l'escalade</title>
</head>
<body>
    <%@ include file="navigation.jsp" %>
<div class="container">
    <div class="row">
    <div class="containerCarousel">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container">
                        <img src="../photos/climb1.jpg" class="d-block w-100" alt="escalade">

                        <div class="carousel-caption d-none d-md-block">
                            <h5>First slide label</h5>
                            <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <img src="../photos/climb2.jpg" class="d-block w-100" alt="escalade">

                        <div class="carousel-caption d-none d-md-block">
                            <h5>Second slide label</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <img src="../photos/climb3.jpg" class="d-block w-100" alt="escalade">

                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    </div>
    <div class="row">
        <div class="col-lg-5">
        <p>
            Bienvenue sur le site des amis de l'escalade.
            Vous rencontrerez ici d'autres fans de grimpe et autres vaches !
            N'hesitez pas à vous inscrire pour rejoindre la communauté, accéder aux meilleurs spots de chacun
            et partager les votres !
        </p>
        </div>
        <div class="col-lg-5 offset-1 ">
            <img src="/photos/escalade_2.jpg"  class="img-circle">
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
           <div class=card>
                <div class="card-body">
                    <h5 class="card-title"> Dernier spot ajouté :</h5>
                    <p class="card-text">
                        <c:out value="Nom : ${ lastSpot.name }"/><br>
                        <c:out value="Adresse : ${ lastSpot.adress }"/><br>


                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
    <%@ include file="footer.jsp" %>
</body>
</html>
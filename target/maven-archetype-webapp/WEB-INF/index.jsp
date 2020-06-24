<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenue chez les amis de l'escalade</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css"/>

</head>
<body>

<%@ include file="navigation.jsp" %>
<section class="page-section cta">
    <div class="container " style="height: 200px">
        <div class="row">
            <div class="col-lg-5">
                <div class="container ">
                        <p style="text-align: center">
                            Bienvenue sur le site des amis de l'escalade.
                            Vous rencontrerez ici d'autres fans de grimpe et autres vaches !
                            N'hesitez pas à vous inscrire pour rejoindre la communauté, accéder aux meilleurs spots de
                            chacun
                            et partager les votres !
                        </p>
                </div>
            </div>

        </div>
    </div>
</section>
<section class="page-section testage " style="background-color: whitesmoke">
    <div class="container "style="height: 200px">
        <div class="row ">
            <div class="col-lg-4 offset-8">
                <div class="container float-lg-right"style="color:black">
                        <h5> Dernier spot ajouté :</h5>
                        <p class="card-text">
                            <c:out value="Nom : ${ lastSpot.name }"/><br>
                            <c:out value="Adresse : ${ lastSpot.adress }"/><br>
                        </p>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>spot ajouté</title>
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
        <h4>Le spot a bien été ajouté <span class="red-dot">!</span></h4>
        <div class="clear"></div>
    </div>
</section>
<section id="lasts">
    <div class="wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <article style="background: url('/photos/escalade_2.jpg');float:left;">
                        <div class="overlay">
                            <h4><a href="/spots/${spot.id}"> ${ spot.name }<span class="red-dot">.</span></a></h4>
                            <p><small><br>
                                    Adresse: ${spot.adress}<br>
                                    Région: ${spot.region}<br>
                                    Pays: ${spot.country}<br>
                                    Latitude: ${spot.latitude}<br>
                                    Longitude: ${spot.longitude}
                            </small>
                            </p>
                        </div>
                    </article>
                </div>

            </div>
            <div class="clear"></div>
        </div>
    </div>
</section>

<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

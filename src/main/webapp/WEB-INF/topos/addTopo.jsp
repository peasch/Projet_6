<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Enregistrer un topo.</title>
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
        <h2>Enregistrer <strong>un Topo</strong><span class="red-dot">.</span></h2>
        <div class="clear"></div>
    </div>
</section>

<div class="container">
    <div class="row">

    </div>
</div>
<section id="lasts">
    <div class="wrapper">
        <div class="container">
            <div class="heading" style="text-align: center;justify-content: center">
                <h2>Saisissez les informations du topo<span class="red-dot">:</span></h2>
                <div class="black-divider"></div>
            </div>
            <div class="row" style="display: flex;flex-wrap: wrap;justify-content: center">
                <div class="col-12 col-md-6 col-lg-4">
                    <form method="post" action="/topos/added" style="margin-top: 20px">
                        <fieldset>
                            <label for="name">Quel est son nom ?</label><br>
                            <input type="text" name="name" id="name"/><br>

                            <label for="region"><u>Quel est sa région ?</u></label><br>
                            <c:forEach var="region" items="${ regions }">
                                <input type="radio" name="region" id="region" value="${region}" style="margin-right: 5px"/>
                                <label for="${region}">${region}</label>
                            </c:forEach><br>
                            <input type="radio" name="region" id="region" value="">Autre : <br><input type="text" name="otherRegion" id="otherRegion" placeholder="région..."style="margin-left: 10px"/><br>

                            <label for="country"><u>Quel est son pays ?</u></label><br>
                            <c:forEach var="country" items="${ countries }">
                                <input type="radio" name="country" id="country" value="${country}"style="margin-right: 5px"/>
                                <label for="${country}">${country}</label>
                            </c:forEach><br>
                            <input type="radio" name="country" id="country" value="">Autre : <br><input type="text" name="otherCountry" id="otherCountry" placeholder="pays..."style="margin-left: 10px"/><br>
                            <label for="apercu">Une description du topo ?</label><br>
                            <textarea name="apercu" id="apercu" rows="5" cols="40"/></textarea>
                            <br>

                            <label for="parution">Quelle est sa date de parution ?</label><br>
                            <input type="text" name="parution" id="parution"/><br>

                            <input type="submit" value="Envoyer" style="margin: 20px;"/>
                        </fieldset>
                    </form>
                </div>
                <div class="col-12 col-md-6 col-lg-4 offset-1" style="float: right">
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
        </div>

        <div class="clear"></div>
    </div>
    </div>
</section>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

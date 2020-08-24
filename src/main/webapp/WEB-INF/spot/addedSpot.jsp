<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>spot ajouté</title>
    <%@ include file="../headAndMetas.jsp" %>
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
                            <h4>Nom: ${spot.name}<span class="red-dot">.</span></h4>
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

<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenue chez les amis de l'escalade</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>
<section class="page-section">
    <div class="container">
        <div class="intro">
            <img class="img-fluid intro-img mb-3 mb-lg-0 rounded" src="/photos/escalade_2.jpg"/>
            <div class="intro-text left-0 text-centerfaded p-5 rounded bg-faded text-center">
                <h2 class="section-heading mb-4">
                    <span class="section-heading-upper">BIENVENUE</span>
                    <span class="section-heading-lower">AMIS GRIMPEURS</span>
                </h2>
                <p class="mb-3">Bienvenue sur le site des amis de l'escalade.
                    Vous rencontrerez ici d'autres fans de grimpe et autres vaches !
                    N'hesitez pas à vous inscrire pour rejoindre la communauté, accéder aux meilleurs spots de
                    chacun
                    et partager les vôtres !</p>
            </div>
        </div>
    </div>
</section>
<div>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</div>
</body>
</html>
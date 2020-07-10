<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

    <title>Retour disponible du topo</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>

<section class="page-section cta">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-2 mx-auto text-center">
                <div class="row">
                    <div class="cta-inner text-center rounded">
                        <h2 class="section-heading mb-4"><span class="section-heading-upper">Reservation :</span></h2>
                        <p class="mb-0 text-center">
                            Le topo est à nouveau visible pour les utilisateurs.
                            Ils pourront en faire une demande de réservation.
                        </p>
                    </div>

                </div>
            </div>
        </div>
        <a href="/profile" class="btn btn-outline-secondary btn-circle btn-sm offset-4"><span
                class="fa fa-user"></span>PROFIL</a>
    </div>
</section>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>
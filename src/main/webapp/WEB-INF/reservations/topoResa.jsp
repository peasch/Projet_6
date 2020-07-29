<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>description du topo</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../navigation.jsp" %>
<section class="page-section" style="background-color: #fd7e14;opacity: 0.8">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
                    <h2 class="section-heading mb-4"><span class="section-heading-upper">Description du topo :</span>
                    </h2>
                    <p class="mb-0">
                        <c:out value="Nom : ${ topo.name }"/><br>
                        <c:out value="description : ${ topo.apercu }"/><br>
                        <c:out value=" date de parution : ${topo.parution}"/><br>
                        <c:out value="topo proposé par : ${topo.owner.getUserName()}"/><br>
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="page-section cta">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
                    <h2 class="section-heading mb-4"><span class="section-heading-upper">Réserver ce topo ?</span><span
                            class="section-heading-lower"></span></h2>
                    <form method="post" action="/topos/${topo.id}/resaRequest">
                        <p>
                            <input type="submit" value="Envoyer une demande de réservation"/>
                        </p>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-4 offset-4">
                <a href="/topos" class="btn btn-outline-secondary btn-block" role="button" aria-pressed="true">
                    revenir à la liste des topos </a>
            </div>
        </div>
    </div>
</section>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>
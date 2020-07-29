<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title> Profil de ${user.userName}</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../navigation.jsp" %>
<div class="container">
    <div class="row align-content-center">
        <div class="col-lg-2">
        </div>
        <div class=card>
            <div class="card-body">
                <h5 class="card-title"> Informations utilisateur :</h5>
                <p class="card-text">
                    <c:out value="Nom : ${ user.name }"/><br>
                    <c:out value="prénom : ${ user.firstName }"/><br>
                    <c:out value="Nom d'utilisateur : ${user.userName}"/><br>

                </p>
            </div>
        </div>

        <div class="card offset-lg-2">
            <div class="card-body">
                <c:choose>
                    <c:when test="${ size==0}"><h5 class="card-title"> Vous n'avez enregistré aucun topo </h5></c:when>
                    <c:when test="${ size==1}"><h5 class="card-title"> topo proposé par ${user.userName} :</h5></c:when>
                    <c:otherwise><h5 class="card-title"> topos proposés par ${user.userName} :</h5></c:otherwise>
                </c:choose>
                <p class="card-text">
                    <c:choose>
                    <c:when test="${ size>0}">
                <ul>
                    <c:forEach var="topo" items="${ topos }">
                        <li><a href="/topos/${topo.id}"><c:out value=" ${ topo.name }"/></a>
                        </li>
                    </c:forEach>
                </ul>
                </c:when>
                </c:choose>
                </p>
            </div>
        </div>

        </article>
    </div>
    <div class="row">

    </div>
</div>
<section class="page-section cta">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
                    <h3 class="section-heading mb-4"><span class="section-heading-upper">demandes de réservations en cours :</span><span
                            class="section-heading-lower"></span></h3>
                    <p>
                        <c:forEach var="reservation" items="${reservations}">
                            <c:choose>
                                <c:when test="${reservation.accepted==null && reservation.topo.getAvailable()==true}">
                                    <c:out value="${reservation.topo.getName()} demandé par ${reservation.caller.getUserName()} le ${reservation.dateReservation}"/>
                                    <a href="/reservation/accept/${reservation.id}"
                                       class="btn btn-outline-secondary btn-sm "
                                       role="button"
                                       aria-pressed="true">
                                        Accepter</a>
                                    <a href="/reservation/refuse/${reservation.id}" class="btn btn-outline-warning btn-sm " role="button"
                                       aria-pressed="true">
                                        Refuser </a> <br>
                                </c:when>
                                <c:when test="${reservation.accepted==false}">
                                    <c:out value="${reservation.topo.getName()} demandé par ${reservation.caller.getUserName()} le ${reservation.dateReservation} a été refusée."/><br>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                    </p>

                </div>
            </div>
        </div>
    </div>
</section>
<section class="page-section testage" >
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
                    <h3 class="section-heading mb-4"><span
                            class="section-heading-upper">Vos réservations en attente :</span><span
                            class="section-heading-lower"></span></h3>
                    <p>
                        <c:forEach var="reservation" items="${resaEnCours}">
                            <c:choose>
                                <c:when test="${reservation.accepted==null}">
                                    <c:out value="${reservation.topo.getName()} demandé à ${reservation.topo.getOwner().getUserName()} le ${reservation.dateReservation}"/>
                                    <a href="/reservation/cancel/${reservation.id}"
                                       class="btn btn-outline-secondary btn-sm " role="button"
                                       aria-pressed="true">
                                        Annuler</a><br></c:when>
                                <c:when test="${reservation.accepted==true && reservation.returned!=true}">
                                    <c:out value="La demande de réservation pour le topo : ${reservation.topo.getName()} a été acceptée."/><br>
                                    <c:out value="Vous pouvez contacter ${reservation.topo.getOwner().getUserName()} ici :"/><a href="mailto:${reservation.topo.getOwner().getEmail()} ">${reservation.topo.getOwner().getEmail()}</a><br>
                                </c:when>
                                <c:when test="${reservation.accepted==false}">
                                    <c:out value="La demande de réservation pour le topo : ${reservation.topo.getName()} a été refusée."/><br>

                                </c:when>
                            </c:choose>
                        </c:forEach>
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
                    <h3 class="section-heading mb-4"><span
                            class="section-heading-upper">Vos topos indisponibles :</span><span
                            class="section-heading-lower"></span></h3>
                    <p>
                        <c:forEach var="reservation" items="${reservations}">
                            <c:choose>
                                <c:when test="${reservation.accepted==true && reservation.topo.getAvailable()==false && reservation.returned!=true}">
                            <c:out value="${reservation.topo.getName()} emprunté par ${reservation.getCaller().getUserName()} le ${reservation.acceptDate}"/>
                            <a href="/topo/${reservation.id}/retourdispo" class="btn btn-outline-secondary btn-sm " role="button" aria-pressed="true">Retour dispo</a><br>
                            </c:when>
                        </c:choose>
                        </c:forEach>
                    </p>

                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>
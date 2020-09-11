<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title> Profil de ${user.userName}</title>
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
        <h2><strong>mon profil</strong><span class="red-dot">.</span></h2>
        <div class="clear"></div>
    </div>
</section>
<section id="userProfile">
    <div class="container">
        <div class="heading">
            <h2> Informations utilisateur<span class="red-dot">.</span></h2>
            <div class="white-divider"></div>
        </div>
        <div class="row">
            <div class="col-12">
                <article class="article">
                    <div class="overlay">
                        <h4>${ user.getUserName() }</h4>
                        <p><small>nom: ${user.getName()}<br>
                            Prénom: ${user.getFirstName()}<br>
                            Email: <a href="mailto:${user.getEmail()} "><br>${user.getEmail()}</a><br>
                        </small></p>

                    </div>
                </article>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</section>
<section id="spotList">
    <div class="container">
        <div class="heading">
            <c:choose>
                <c:when test="${ size==0}"><h2> Vous n'avez enregistré aucun topo <span class="red-dot">.</span>
                </h2></c:when>
                <c:when test="${ size==1}"><h2> topo proposé par ${user.userName}<span class="red-dot">:</span>
                </h2></c:when>
                <c:otherwise><h2> Mes topos<span class="red-dot">:</span></h2></c:otherwise>
            </c:choose>
        </div>
        <div class="black-divider"></div>
        <div class="row">
            <c:choose>
                <c:when test="${ size>0}">
                    <c:forEach var="topo" items="${ topos }">
                        <div class="col-12 col-md-6 col-lg-4">
                            <article style="background-image: url('/photos/escalade_4.jpg');float:left; height: 450px">
                                <div class="overlay">
                                    <h4><a href="/topos/${topo.id}">Nom: ${topo.name} <span
                                            class="red-dot">.</span></a></h4>
                                    <p><small><br> Région: ${topo.region}<br>Pays: ${topo.country}
                                    </small></p>
                                    <p><small>Parution : ${topo.parution}</small></p><br>
                                    <c:choose>
                                        <c:when test="${reservation.accepted==true && reservation.topo.getAvailable()==false && reservation.returned!=true}">
                                        </c:when>
                                        <c:when test="${topo.getAvailable()==true}">
                                            <a href="/topo/${topo.id}/disable" type="button"
                                               class="btn btn-outline-dark btn-sm"
                                               role="button"
                                               aria-pressed="true">Rendre indisponible</a>
                                        </c:when>
                                        <c:when test="${topo.getAvailable()==false}">
                                            <a href="/topo/${topo.id}/enable"
                                               class="btn btn-outline-danger btn-sm " role="button" aria-pressed="true">Retour
                                                dispo</a>
                                        </c:when>
                                    </c:choose>
                                </div>
                            </article>
                        </div>
                    </c:forEach>
                </c:when>
            </c:choose>

        </div>
    </div>
    <div class="clear"></div>
</section>
<section class="page-section cta">
    <div class="container">
        <div class="heading">
            <h2> Demandes de réservation de mes topos en cours <span class="red-dot">:</span></h2>
            <div class="black-divider"></div>
        </div>
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
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
                                    <a href="/reservation/refuse/${reservation.id}"
                                       class="btn btn-outline-warning btn-sm " role="button"
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
<section class="testage">
    <div class="container">
        <div class="heading">
            <h2> Mes réservations en attente<span class="red-dot">:</span></h2>
            <div class="white-divider"></div>
        </div>
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
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
                                    <strong><c:out
                                            value="Vous pouvez contacter ${reservation.topo.getOwner().getUserName()} ici :"/><a
                                            href="mailto:${reservation.topo.getOwner().getEmail()} ">${reservation.topo.getOwner().getEmail()}</a></strong><br>
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
        <div class="heading">
            <h2>Mes topos indisponibles<span class="red-dot">:</span></h2>
            <div class="black-divider"></div>
        </div>
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <div class="cta-inner text-center rounded">
                    <p>
                        <c:forEach var="reservation" items="${reservations}">
                            <c:choose>
                                <c:when test="${reservation.accepted==true && reservation.topo.getAvailable()==false && reservation.returned!=true}">
                                    <c:out value="${reservation.topo.getName()} emprunté par ${reservation.getCaller().getUserName()} depuis ${reservation.acceptDate}"/>
                                    <a href="/topo/${reservation.id}/retourdispo"
                                       class="btn btn-outline-secondary btn-sm " role="button" aria-pressed="true">Retour
                                        dispo</a><br>
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
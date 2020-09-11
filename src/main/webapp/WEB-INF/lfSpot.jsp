<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Rechercher un Spot</title>
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
<%@ include file="header.jsp" %>
<section id="accueil-image">
    <div class="wrapper">
        <h2>Rechercher un spot<span class="red-dot">.</span></h2>
        <div class="clear"></div>
    </div>
</section>
<section id="research">
    <div class="wrapper">
        <h4>Selectionnez vos critères de recherche<span class="red-dot">.</span></h4>
        <form method="post" action="/recherche">
            <div class="row">

                <div class="col-12 col-md-6 col-lg-3">

                    <h6>Pays <span class="red-dotted">:</span></h6>
                    <c:choose>
                        <c:when test="${empty countryTable}">
                            <c:forEach var="country" items="${ countries }">
                                <input type="checkbox" name="country" id="country" value="${country}"/>
                                <label for="${country}">${country}</label><br/>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="country" items="${countryTable}">
                                <input type="checkbox" name="country" id="country" value="${country}"
                                       checked/>
                                <label for="${country}">${country}</label><br/>
                            </c:forEach>
                            <c:forEach var="country" items="${uncheckedCountries}">
                                <input type="checkbox" name="country" id="country" value="${country}"/>
                                <label for="${country}">${country}</label><br/>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                    <input type="hidden" name="country" id="country" checked value="no"/><br/>

                </div>
                <div class="col-12 col-md-6 col-lg-3">

                    <h6>Régions <span class="red-dotted">:</span></h6>
                    <c:choose>
                        <c:when test="${empty regionTable}">
                            <c:forEach var="region" items="${ regions }">
                                <input type="checkbox" name="region" id="region" value="${region}"/>
                                <label for="${region}">${region}</label><br/>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="region" items="${regionTable}">
                                <input type="checkbox" name="region" id="region" value="${region}"
                                       checked/>
                                <label for="${region}">${region}</label><br/>
                            </c:forEach>
                            <c:forEach var="region" items="${uncheckedRegions}">
                                <input type="checkbox" name="region" id="region" value="${region}"/>
                                <label for="${region}">${region}</label><br/>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                    <input type="hidden" name="region" id="region" checked value="no"/><br/>

                </div>
                <div class="col-12 col-md-6 col-lg-3">

                    <h6>cotations <span class="red-dotted">:</span></h6>
                    <c:choose>
                        <c:when test="${empty ratingTable}">
                            <c:forEach var="rating" items="${ ratings }">
                                <input type="checkbox" name="rating" id="rating" value="${rating}"/>
                                <label for="${rating}">${rating}</label><br/>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="rating" items="${ratingTable}">
                                <input type="checkbox" name="rating" id="rating" value="${rating}"
                                       checked/>
                                <label for="${rating}">${rating}</label><br/>
                            </c:forEach>
                            <c:forEach var="rating" items="${uncheckedRatings}">
                                <input type="checkbox" name="rating" id="rating" value="${rating}"/>
                                <label for="${rating}">${rating}</label><br/>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                    <input type="hidden" name="rating" id="rating" checked value="no"/><br/>

                </div>
                <div class="col-12 col-md-6 col-lg-3">

                    <h6>Rechercher un nom de spot<span class="red-dotted">:</span></h6>
                    <input type="search" name="searchSpot" id="searchSpot"
                           style="border:1px solid black;padding-left: 10px;margin-top: 5px"
                           placeholder="votre recherche..."/><br>
                    <br>
                    <h6>Rechercher un nom de secteur <span class="red-dotted">:</span></h6>
                    <input type="search" name="searchSector" id="searchSector"
                           style="border:1px solid black;padding-left: 10px;margin-top: 5px"
                           placeholder="votre recherche..."/>

                </div>
                <div class="clear"></div>
                </ul>
            </div>
            <div id="valid-form" style="margin-top: 30px">
                <input type="submit" value="Envoyer"/>
            </div>
        </form>
    </div>
</section>
<section id="spotList" style="justify-content: center">
    <div class="container">
        <c:choose>
            <c:when test="${found==true}">
                <div style="text-align: center">
                    <h4>Spots correspondant à vos critères de recherche<span class="red-dot">.</span></h4>
                </div>
            </c:when>
        </c:choose>
        <div class="row" style="justify-content: center">
            <c:forEach var="researchSpot" items="${researchSpots}">
                <div class="col-12 col-md-6 col-lg-4">
                    <article style="background-image: url('/photos/escalade_2.jpg');float:left">
                        <div class="overlay">
                            <h4><a href="/spots/${researchSpot.id}">${researchSpot.name}<span class="red-dot">.</span>
                            </a></h4>
                            <p><small>Région : ${researchSpot.region}<br>Pays: ${researchSpot.country}</small></p>
                        </div>
                    </article>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="clear"></div>
</section>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css"/>
    <title> Lister les spots</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="row">


        <div class="col-md-12">
            <div class="row">
                <article class=col-md-6">
                    description du spot :<br>
                  <c:out value="Nom : ${ spot.name }"/><br>
                    <c:out value="Adresse : ${ spot.adress }"/><br>
                    <c:out value=" Latitude ${spot.latitude} : Longitude ${ spot.longitude }"/><br>
                    <c:out value="Site officiel des amis  : ${ spot.officialLade }"/><br>
                    <c:out value="spot proposé par : ${user.userName}"/>
                </article>
            </div>
        </div>
    </div>
</div>
</body>
</html>
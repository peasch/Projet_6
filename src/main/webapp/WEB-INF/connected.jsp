<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>connecté</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-12"></div>
    </div>
    <div class="jumbotron">

            <h3>
                Félicitations ${sessionScope.userName}, vous êtes connecté !
            </h3>

    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>

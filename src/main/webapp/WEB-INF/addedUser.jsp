<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>spot ajouté</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<h1>bienvenue</h1>
<p>
    Bienvenue ${user.firstName}  ${user.name} !
</p>
<a href="/connexion" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Connectez-vous !</a>
<%@ include file="footer.jsp" %>
</body>
</html>

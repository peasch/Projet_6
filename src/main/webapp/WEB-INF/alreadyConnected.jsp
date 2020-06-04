<%--
  Created by IntelliJ IDEA.
  User: peasc
  Date: 09/04/2020
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Au revoir!</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="navigation.jsp" %>

<h5> Il y à déjà un utilisateur connecté !
    nous venons de vous déconnecter pour pouvoir vous inscrire sur le site !
</h5>
<a href="/registration" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Inscription !</a>
<%@ include file="footer.jsp" %>
</body>
</html>

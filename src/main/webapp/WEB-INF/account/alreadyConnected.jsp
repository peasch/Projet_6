<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Au revoir!</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../navigation.jsp" %>
<section class="page-section cta">
<h5> Il y � d�j� un utilisateur connect� !
    nous venons de vous d�connecter pour pouvoir vous inscrire sur le site !
</h5>
<a href="/registration" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Inscription !</a>
</section>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

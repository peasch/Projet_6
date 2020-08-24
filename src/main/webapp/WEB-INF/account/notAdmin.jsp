<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>faux !</title>
    <%@ include file="../headAndMetas.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<section id="accueil-image">
    <div class="wrapper">
        <h4><strong>ERREUR</strong><span class="red-dot">!</span></h4>
        <div class="clear"></div>
    </div>
</section>
    <c:choose>
        <c:when test="${role.equals(member)}">
            <section id="accueil-image">
                <div class="wrapper">
                    <div class="row" style="display: flex;flex-wrap: wrap;justify-content: center">
                        <div class="col-12 col-md-6 col-lg-4">
                            <h4>Désolé, il faut être membre des amis de l'escalade pour approuver un spot<span
                                    class="red-dot">!</span></h4><br>
                            </h6><br>
                            <a href="/home" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Retour</a>
                        </div>
                    </div>
                </div>
            </section>

        </c:when>
        <c:otherwise>
            <section id="accueil-image">
                <div class="wrapper">
                    <div class="row" style="display: flex;flex-wrap: wrap;justify-content: center">
                        <div class="col-12 col-md-6 col-lg-4">
                            <h4>Désolé, il faut être administrateur pour accéder à cette zone <span
                                    class="red-dot">!</span></h4><br>
                            </h6><br>
                            <a href="/home" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Retour</a>
                        </div>
                    </div>
                </div>
            </section>

        </c:otherwise>
    </c:choose>
<%@ include file="../footer.jsp" %>
<%@ include file="../scripts.jsp" %>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

    <title> Administration du site</title>
    <%@ include file="headAndMetas.jsp" %>
</head>
<body>
<%@ include file="navigation.jsp" %>

<c:choose>
    <c:when test="${roleAdmin==true}">
        <section class="page-section cta">
            <div class="container">
                <div class="row" style="display: block">
                    <div class="row">
                        <div class="col-lg-5">
                            <p style="border:1px black double">
                                Membre
                            </p>
                        </div>
                        <div class="col-lg-4">
                            <p style="border: 1px black double"> Promouvoir membre</p>
                        </div>
                    </div>
                </div>
                <div class="row" style="display: block">
                    <c:forEach var="user" items="${userList}">
                        <div class="row">
                            <div class="col-lg-5">
                                <p style="border:1px black solid">
                                    Profil : <a href="/profil/${user.getId()}"><c:out
                                        value="${ user.getUserName() }, ${user.getName()} ${user.getFirstName()}."/></a><br>
                                    Email : <a href="mailto:${user.getEmail()} ">${user.getEmail()}</a>
                                </p>
                            </div>
                            <div class="col-lg-4">
                                <p style="padding: auto">
                                    <c:choose>
                                    <c:when test="${user.getMember()!=true}">
                                <p>
                                    <a href="/user/${user.getId()}/upgrade" class="btn btn-outline-secondary btn-sm " role="button"
                                       aria-pressed="true"><i class="fa fa-handshake-o" aria-hidden="true"></i>
                                        membre</a>
                                </p>
                                </c:when>
                                </c:choose>
                                </p>
                            </div>
                        </div>

                    </c:forEach>
                </div>
            </div>
        </section>
    </c:when>
</c:choose>
<%@ include file="footer.jsp" %>
<%@ include file="scripts.jsp" %>
</body>
</html>
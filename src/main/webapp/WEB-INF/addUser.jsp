<%--
  Created by IntelliJ IDEA.
  User: peasc
  Date: 09/04/2020
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Inscription</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<form method="post" action="/RegistrationServlet">
    <fieldset>
        <legend> Saisissez vos coordonnées :</legend>

        <label for="nom">Nom ?</label><br>
        <input type="text" name="nom" id="nom"/><br>

        <label for="prenom">Prénom ?</label><br>
        <input type="text" name="prenom" id="prenom"/><br>

        <label for="Username">Nom d'utilisateur ? </label><br>
        <input type="text" name="Username" id="Username"/><br>

        <label for="email">email ?</label><br>
        <input type="email" name="email" id="email"/><br>

        <label for="password">Mot de passe ?</label><br>
        <input type="password" name="password" id="password"/><br>

        <input type="submit" value="Envoyer" />
    </fieldset>
</form>

<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Inscription</title>
</head>
<body>
<%@ include file="navigation.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <form method="post" action="registered">
                <fieldset>
                    <legend> Saisissez vos coordonnées :</legend>

                    <label for="nom">Nom ?</label><br>
                    <input type="text" name="nom" id="nom"/><br>

                    <label for="prenom">Prénom ?</label><br>
                    <input type="text" name="prenom" id="prenom"/><br>

                    <label for="username">Nom d'utilisateur ? </label><br>
                    <input type="text" name="username" id="username"/><br>

                    <label for="email">email ?</label><br>
                    <input type="email" name="email" id="email"/><br>

                    <label for="password">Mot de passe ?</label><br>
                    <input type="password" name="password" id="password"/><br>

                    <input type="submit" value="Envoyer"/>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict';
        window.addEventListener('load', function () {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
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
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>

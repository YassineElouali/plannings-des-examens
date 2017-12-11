<%-- 
    Document   : Addclasse
    Created on : 04-May-2017, 11:40:28
    Author     : el ouali
--%>

<%@include file="head.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12 col-lg-offset-2">
            <form action="addprofserv" method="POST">

                <h1>Ajouter un Professeur</h1><br>
                <div class="form-group">
                    <input type="text" placeholder="Nom du professeur" name="NomProfesseur">
                </div>
                <div class="form-group">
                <input type="text" placeholder="Prenom du professeur" name="PrenomProfesseur">
                </div>
                <div class="form-group">
                <input type="text" placeholder="Email du Professeur" name="EmailProfesseur">
                </div>
                <div class="form-group">
                <input type="text" placeholder="Telephone du professeur" name="TelProfesseur">
                </div>
                <div class="form-group">
                <input class="input" type="submit" value="Ajouter">
                </div>
                <input class="input"  type="button"  value="afficher liste des Professeurs" name="listeprof"
                       onclick="openPage('listprof.jsp')">
            </form>
        </div>
    </div>

    <%@include file="footer.jsp" %>
    <script type="text/javascript">
        function openPage(pageURL)
        {
            window.location.href = pageURL;
        }
    </script>
</body>
</html>

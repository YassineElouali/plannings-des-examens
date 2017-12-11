<%-- 
    Document   : Addclasse
    Created on : 04-May-2017, 11:40:28
    Author     : el ouali
--%>


<%@include file="head.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12 col-lg-offset-2">
            <form action="addsalleserv" method="post">
                <h1>Ajouter une Salle</h1><br>
                <div class="form-group">
                    <input type="text" placeholder="Nom de la salle" name="LibSalle">
                </div>
                <div class="form-group">
                    <input type="text" placeholder="Capacité" name="capacite">
                </div>
                <div class="form-group">
                    <input type="text" placeholder="nombre de surveillant" name="nbrsurveillant">
                </div>
                <div class="form-group">
                    <input type="text" placeholder="Etage" name="etage">
                </div>
                <input class="input" type="submit" value="Ajouter"><br>
                <input class="input"  type="button"  value="afficher liste des salles" name="listsalle"
                       onclick="openPage('listsalle.jsp')">
            </form>
        </div>
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

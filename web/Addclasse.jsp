<%-- 
    Document   : Addclasse
    Created on : 04-May-2017, 11:40:28
    Author     : el ouali
--%>

<%@include file="head.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12 col-lg-offset-2">
            <form action="addclasseserv" method="POST">
                <h1>Ajouter une Classe</h1><br>

                <div class="form-group">

                    <input type="text" class="form-control"  placeholder="Nom de la classe" name="nomclasse">
                </div>
                <div class="form-group">
                    <input class="input" type="submit" value="Ajouter">

                </div>
                <input class="input"  type="button"  value="afficher liste des classes" name="listeclasse"
                       onclick="openPage('listClass.jsp')">

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

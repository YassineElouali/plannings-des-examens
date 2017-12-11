<%-- 
    Document   : Addclasse
    Created on : 04-May-2017, 11:40:28
    Author     : el ouali
--%>


<%@page import="com.emsi.classes.Salle"%>
<%@page import="com.emsi.dao.SalleDao"%>
<%@include file="head.jsp" %>
<%SalleDao sd = new SalleDao();
    Salle s = new Salle();
    Long id = Long.parseLong(request.getParameter("id"));
    s = sd.getById(id);%>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12 col-lg-offset-2">
            <form action="Updatesalleserv" method="post">
                <input type="hidden" name="id" value="<%=s.getId()%>"/>
                <h1>Modifier Salle</h1><br>

                <div class="form-group">
                    Nom de la salle:<input type="text" style="margin-right: 150px;" value="<%=s.getLibSalle()%>" name="LibSalle">
                </div>
                <div class="form-group">
                    La Capacité:<input type="text" style="margin-left: 120px;" value="<%=s.getCapacite()%>" name="capacite">
                </div>
                <div class="form-group">
                    Le nombre des surveillants:<input type="text" style="margin-left: 28px;" value="<%=s.getNbrSurveillant()%>" name="nbrsurveillant">
                </div>
                <div class="form-group">
                    L'étage:<input type="text"style="margin-left: 150px;" value="<%=s.getEtage()%>" name="etage">
                </div>
                <input class="input" type="submit" value="Valider"><br>
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

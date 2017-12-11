<%-- 
    Document   : Addclasse
    Created on : 04-May-2017, 11:40:28
    Author     : el ouali
--%>

<%@page import="com.emsi.classes.Surveillant"%>
<%@page import="com.emsi.dao.SurveillantDao"%>
<%@include file="head.jsp" %>
<%SurveillantDao cd =new SurveillantDao();
Surveillant c=new Surveillant();
Long id=Long.parseLong(request.getParameter("id"));
c=cd.getById(id);%>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12 col-lg-offset-2">
            <form action="Updatesurvserv" method="POST">
                <h1>Modifier Classe</h1><br>
                <input type="hidden" name="id" value="<%=c.getId()%>"
                <div class="form-group">

                  CIN:  <input type="text" class="form-control"  value="<%=c.getCIN()%>" name="CIN">
                  Nom Surveillant: <input type="text" class="form-control"  value="<%=c.getNomSurveillant()%>" name="NomSurveillant">
                  Email Surveillant: <input type="text" class="form-control"  value="<%=c.getEmailSurveillant()%>" name="EmailSurveillant">
                  Tel Surveillant: <input type="text" class="form-control"  value="<%=c.getTelSurveillant()%>" name="TelSurveillant">
                </div>
                <div class="form-group">
                    <input class="input" type="submit" value="Valider">

                </div>
                <input class="input"  type="button"  value="afficher liste des Surveillants" name="listesurv"
                       onclick="openPage('listsurv.jsp')">

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

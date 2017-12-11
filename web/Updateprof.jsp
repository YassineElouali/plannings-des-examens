<%-- 
    Document   : Updateprof
    Created on : 28-Jun-2017, 22:46:38
    Author     : el ouali
--%>

<%@page import="com.emsi.classes.Professeur"%>
<%@page import="com.emsi.dao.ProfesseurDao"%>
<%@include file="head.jsp" %>
<%ProfesseurDao cd =new ProfesseurDao();
Professeur c=new Professeur();
Long id=Long.parseLong(request.getParameter("id"));
c=cd.getById(id);%>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12 col-lg-offset-2">
            <form action="updateprofserv" method="POST">
                <h1>Modifier Prof</h1><br>
                <input type="hidden" name="id" value="<%=c.getId()%>"
                <div class="form-group">

                  Nom du Prof:  <input type="text" class="form-control"  value="<%=c.getNomProfesseur()%>" name="NomProfesseur">
                  Prenom du Prof:  <input type="text" class="form-control"  value="<%=c.getPrenomProfesseur()%>" name="PrenomProfesseur">
                  Email du Prof:  <input type="text" class="form-control"  value="<%=c.getEmailProfesseur()%>" name="EmailProfesseur">
                  Tel du Prof:  <input type="text" class="form-control"  value="<%=c.getTelProfesseur()%>" name="TelProfesseur">
                </div>
                <div class="form-group">
                    <input class="input" type="submit" value="Valider">

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

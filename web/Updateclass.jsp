<%-- 
    Document   : Addclasse
    Created on : 04-May-2017, 11:40:28
    Author     : el ouali
--%>

<%@page import="com.emsi.classes.Classe"%>
<%@page import="com.emsi.dao.ClasseDao"%>
<%@include file="head.jsp" %>
<%ClasseDao cd =new ClasseDao();
Classe c=new Classe();
Long id=Long.parseLong(request.getParameter("id"));
c=cd.getById(id);%>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12 col-lg-offset-2">
            <form action="Updateclasseserv" method="POST">
                <h1>Modifier Classe</h1><br>
                <input type="hidden" name="id" value="<%=c.getId()%>"
                <div class="form-group">

                  Nom de la classe:  <input type="text" class="form-control"  value="<%=c.getNomClasse()%>" name="nomclasse">
                </div>
                <div class="form-group">
                    <input class="input" type="submit" value="Valider">

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

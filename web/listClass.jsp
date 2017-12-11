<%-- 
    Document   : listClass
    Created on : 25-Jun-2017, 21:28:56
    Author     : el ouali
--%>

<%@page import="com.emsi.classes.Classe"%>
<%@page import="com.emsi.dao.ClasseDao"%>
<%@include file="head.jsp" %>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="" method="POST">
                <div class="col-md-12 column">
                    <table style="background-color: #449d44; font: larger;
                           font-weight:  bold;" class="table table-bordered table-hover">
                        <tr>
                            <th>identifiant de la classe</th>
                            <th>le nom de la classe</th>
                            <th>Modifier</th>
                            <th>Supprimer</th>
                        </tr>
                        <%ClasseDao cd = new ClasseDao();
                            for (Classe c : cd.getAll()) {
                        %>
                        <tr>
                            <td><%=c.getId()%></td>
                            <td><%=c.getNomClasse()%></td>
                            <td><a href="Updateclass.jsp?id=<%=c.getId()%>"><button class="btn btn-primary btn-xs" data-title="Edit"><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>
                            <td><a href="Deleteclass.jsp?id=<%=c.getId()%>"><button class="btn btn-danger btn-xs" data-title="Delete" ><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>

                        </tr><%}%>
                    </table>
                    <input class="input"  type="button"  value="ajouter une autre classe" name="addclass"
                           onclick="openPage('Addclasse.jsp')">
                </div>

            </form>
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

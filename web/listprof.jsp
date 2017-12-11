<%-- 
    Document   : listprof
    Created on : 28-Jun-2017, 22:42:28
    Author     : el ouali
--%>

<%@page import="com.emsi.classes.Professeur"%>
<%@page import="com.emsi.dao.ProfesseurDao"%>
<%@include file="head.jsp" %>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="" method="POST">
                <div class="col-md-12 column">
                    <table style="background-color: #449d44; font: larger;
                           font-weight:  bold;" class="table table-bordered table-hover">
                        <tr>
                            <th>identifiant du Professeur</th>
                            <th>le nom du Professeur </th>
                            <th>le prenom du Professeur</th>
                            <th>Telephonne du Professeur</th>
                            <th>Modifier</th>
                            <th>Supprimer</th>
                        </tr>
                        <%ProfesseurDao cd = new ProfesseurDao();
                            for (Professeur c : cd.getAll()) {
                        %>
                        <tr>
                            <td><%=c.getId()%></td>
                            <td><%=c.getNomProfesseur()%></td>
                            <td><%=c.getPrenomProfesseur()%></td>
                            <td><%=c.getTelProfesseur()%></td>
                            <td><a href="Updateprof.jsp?id=<%=c.getId()%>"><button class="btn btn-primary btn-xs" data-title="Edit"><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>
                            <td><a href="Deleteprof.jsp?id=<%=c.getId()%>"><button class="btn btn-danger btn-xs" data-title="Delete" ><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>

                        </tr><%}%>
                    </table>
                    <input class="input"  type="button"  value="ajouter un autre prof" name="addprof"
                           onclick="openPage('Addprof.jsp')">
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


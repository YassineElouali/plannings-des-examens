<%-- 
    Document   : listClass
    Created on : 25-Jun-2017, 21:28:56
    Author     : el ouali
--%>

<%@page import="com.emsi.classes.Examen"%>
<%@page import="com.emsi.dao.ExamenDao"%>
<%@include file="head.jsp" %>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="" method="POST">
                <div class="col-md-12 column">
                    <table style="background-color: #449d44; font: larger;
                           font-weight:  bold;" class="table table-bordered table-hover">
                        <tr>
                            <th>Jour</th>
                            <th>Matiere</th>
                            <th>Heure Debut</th>
                            <th>Heure Fin</th>
                            <th>Semestre</th>
                            <th>Classe</th>
                            <th>Modifier</th>
                            <th>Supprimer</th>
                        </tr>
                        <%ExamenDao cd = new ExamenDao();
                            for (Examen c : cd.getAll()) {
                        %>
                        <tr>
                            <td><%=c.getDate()%></td>
                            <td><%=c.getMatiere()%></td>
                            <td><%=c.getHeuredebut()%></td>
                            <td><%=c.getHeurefin()%></td>
                            <td><%=c.getSemestre()%></td>
                            <td><%=c.getClasse()%></td>
                            <td><a href="Updateexam.jsp?id=<%=c.getId()%>"><button class="btn btn-primary btn-xs" data-title="Edit"><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>
                            <td><a href="Deleteexam.jsp?id=<%=c.getId()%>"><button class="btn btn-danger btn-xs" data-title="Delete" ><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>

                        </tr><%}%>
                    </table>
                    <input class="input"  type="button"  value="ajouter un autre Planning" name="table"
                           onclick="openPage('table.jsp')">
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

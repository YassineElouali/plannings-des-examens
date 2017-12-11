<%-- 
    Document   : listClass
    Created on : 25-Jun-2017, 21:28:56
    Author     : el ouali
--%>

<%@page import="com.emsi.classes.Matiere"%>
<%@page import="com.emsi.dao.MatiereDao"%>
<%@include file="head.jsp" %>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="" method="POST">
                <div class="col-md-12 column">
                    <table style="background-color: #449d44; font: larger;
                           font-weight:  bold;" class="table table-bordered table-hover">
                        <tr>
                            <th>identifiant de la Matiere</th>
                            <th>le nom de la matiere</th>
                            <th>le jour</th>
                            <th>le nom du professeur</th>
                            <th>Nom Surveillant</th>
                            <th>Nom Salle</th>
                            <th>Semestre</th>
                            <th>Nom de la classe</th>
                            <th>Modifier</th>
                            <th>Supprimer</th>
                        </tr>
                        <%MatiereDao md = new MatiereDao();
                            for (Matiere m : md.getAll()) {
                        %>
                        <tr>
                            <td><%=m.getId()%></td>
                            <td><%=m.getNomMatiere()%></td>
                            <td><%=m.getJour()%></td>
                            <td><%=m.getNomProfesseur()%></td>
                            <td><%=m.getNomSurveillant()%></td>
                            <td><%=m.getNomSalle()%></td>
                            <td><%=m.getSemestre()%></td>
                            <td><%=m.getNomClasse()%></td>
                            <td><a href="Updatematiere.jsp?id=<%=m.getId()%>"><button class="btn btn-primary btn-xs" data-title="Edit"><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>
                            <td><a href="Deletematiere.jsp?id=<%=m.getId()%>"><button class="btn btn-danger btn-xs" data-title="Delete" ><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>

                        </tr><%}%>
                    </table>
                    <input class="input"  type="button"  value="ajouter une autre matiere" name="addmatiere"
                           onclick="openPage('Addmatiere.jsp')">
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

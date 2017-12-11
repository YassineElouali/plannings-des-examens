<%-- 
    Document   : listsalle
    Created on : 27-Jun-2017, 20:33:53
    Author     : el ouali
--%>

<%@page import="com.emsi.classes.Salle"%>
<%@page import="com.emsi.dao.SalleDao"%>
<%@include file="head.jsp" %>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="" method="POST">
                <div class="col-md-12 column">
                    <table style="background-color: #449d44; font: larger;
                           font-weight:  bold;" class="table table-bordered table-hover">
                        <tr>
                            <th>identifiant de la Salle</th>
                            <th>le nom de la salle</th>
                            <th>la capacite</th>
                            <th>Etage</th>
                            <th>Nombre des Surveillants</th>
                            <th>Modifier</th>
                            <th>Supprimer</th>
                        </tr>
                        <%SalleDao md = new SalleDao();
                            for (Salle m : md.getAll()) {
                        %>
                        <tr>
                            <td><%=m.getId()%></td>
                            <td><%=m.getLibSalle()%></td>
                            <td><%=m.getCapacite()%></td>
                            <td><%=m.getEtage()%></td>
                            <td><%=m.getNbrSurveillant()%></td>
                            <td><a href="Updatesalle.jsp?id=<%=m.getId()%>"><button class="btn btn-primary btn-xs" data-title="Edit"><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>
                             <td><a href="Deletesalle.jsp?id=<%=m.getId()%>"><button class="btn btn-danger btn-xs" data-title="Delete" ><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>
                         

                        </tr><%}%>
                    </table>
                    <input class="input"  type="button"  value="ajouter une autre salle" name="addsalle"
                           onclick="openPage('Addsalle.jsp')">
                </div>

            </form>
        </div>
        <%@include file="footer.jsp" %>
        </body>
        </html>

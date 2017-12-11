<%-- 
    Document   : listClass
    Created on : 25-Jun-2017, 21:28:56
    Author     : el ouali
--%>

<%@page import="com.emsi.classes.Surveillant"%>
<%@page import="com.emsi.dao.SurveillantDao"%>
<%@include file="head.jsp" %>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="" method="POST">
                <div class="col-md-12 column">
                    <table style="background-color: #449d44; font: larger;
                           font-weight:  bold;" class="table table-bordered table-hover">
                        <tr>
                            <th>identifiant du Surveillant</th>
                            <th>le nom du Surveillant</th>
                            <th>Email du Surveillant</th>
                            <th>Tel du Surveillant</th>
                            <th>Modifier</th>
                            <th>Supprimer</th>
                        </tr>
                        <%SurveillantDao cd = new SurveillantDao();
                            for (Surveillant c : cd.getAll()) {
                        %>
                        <tr>
                            <td><%=c.getId()%></td>
                            <td><%=c.getNomSurveillant()%></td>
                            <td><%=c.getEmailSurveillant()%></td>
                            <td><%=c.getTelSurveillant()%></td>
                            <td><a href="Updatesurv.jsp?id=<%=c.getId()%>"><button class="btn btn-primary btn-xs" data-title="Edit"><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>
                            <td><a href="Deletesurv.jsp?id=<%=c.getId()%>"><button class="btn btn-danger btn-xs" data-title="Delete" ><span class="glyphicon glyphicon-pencil"></span></button></a></p></td>

                        </tr><%}%>
                    </table>
                    <input class="input"  type="button"  value="ajouter un autre Surveillant" name="addsurv"
                           onclick="openPage('Addsurveillant.jsp')">
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

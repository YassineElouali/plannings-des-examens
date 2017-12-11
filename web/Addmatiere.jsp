<%-- 
    Document   : Addclasse
    Created on : 04-May-2017, 11:40:28
    Author     : el ouali
--%>
<%@page import="com.emsi.classes.Classe"%>
<%@page import="com.emsi.dao.ClasseDao"%>
<%@page import="com.emsi.classes.Salle"%>
<%@page import="com.emsi.dao.SalleDao"%>
<%@page import="com.emsi.classes.Surveillant"%>
<%@page import="com.emsi.dao.SurveillantDao"%>
<%@page import="com.emsi.classes.Professeur"%>
<%@page import="com.emsi.dao.ProfesseurDao"%>

<%@include file="head.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12 col-lg-offset-2">
            <form action="addmatiereserv" method="POST">

                <h1>Ajouter une matière</h1><br>

                <div class="form-group">
                    <select class="form-control" style="width: 200px;"  name="nomclasse">
                        <option value="0" disabled selected>Choisir une classe</option>
                        <%
                            ClasseDao cd = new ClasseDao();
                            for (Classe c : cd.getAll()) {
                        %>
                        <option value="<%= c.getNomClasse()%>"><%=c.getNomClasse()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                    <div class="form-group">
                   <select class="form-control" style="width: 200px;"  name="nomprof">
                        <option value="0" disabled selected>Choisir un Professeur</option>
                        <%
                            ProfesseurDao pd = new ProfesseurDao();
                            for (Professeur p : pd.getAll()) {
                        %>
                        <option value="<%= p.getNomProfesseur()%>"><%=p.getNomProfesseur()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" style="width: 200px;margin-left:1px;" style placeholder="Nom de la matière" name="nommatiere">
                </div>

                <div class="form-group">
                    <select class="form-control" style="width: 200px;"  name="nomsurv">
                        <option value="0" disabled selected>Choisir un surveillant</option>
                        <%
                            SurveillantDao sd = new SurveillantDao();
                            for (Surveillant s : sd.getAll()) {
                        %>
                        <option value="<%= s.getNomSurveillant()%>"><%=s.getNomSurveillant()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control" style="width: 200px;"  name="nomsalle">
                        <option value="0" disabled selected>Choisir une salle</option>
                        <%
                            SalleDao salledao = new SalleDao();
                            for (Salle s : salledao.getAll()) {
                        %>
                        <option value="<%= s.getLibSalle()%>"><%=s.getLibSalle()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <input type="date" name='jour' style="width: 200px;"  class="form-control" data-date-format="mm/dd/yyyy"/>
                </div>
                <div class="form-group">
                    <select class="form-control" style="width: 200px;"  name="semester">
                        <option value="0" disabled selected>Semestre</option>
                        <option value="1">1</option>
                        <option value="2">2</option>

                    </select>
                </div>
                <div class="form-group">
                    <input class="input" type="submit" value="Ajouter">
                </div>
                <input class="input"  type="button"  value="afficher liste des matières" name="listematiere"
                       onclick="openPage('listmatiere.jsp')">
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

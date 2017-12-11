<%-- 
    Document   : Addclasse
    Created on : 04-May-2017, 11:40:28
    Author     : el ouali
--%>
<%@page import="com.emsi.classes.Matiere"%>
<%@page import="com.emsi.dao.MatiereDao"%>
<%@page import="com.emsi.classes.Classe"%>
<%@page import="com.emsi.dao.ClasseDao"%>
<%@page import="com.emsi.classes.Salle"%>
<%@page import="com.emsi.dao.SalleDao"%>
<%@page import="com.emsi.classes.Surveillant"%>
<%@page import="com.emsi.dao.SurveillantDao"%>
<%@page import="com.emsi.classes.Professeur"%>
<%@page import="com.emsi.dao.ProfesseurDao"%>

<%@include file="head.jsp" %>
<%MatiereDao md=new MatiereDao();
Matiere m=new Matiere();
Long id=Long.parseLong(request.getParameter("id"));
m=md.getById(id);%>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-xs-12 col-lg-offset-2">
            <form action="Updatematieresurv" method="POST">
                <input type="hidden" name="id" value="<%=m.getId()%>"/>
                <h1>Modifier une matière</h1><br>

                <div class="form-group">
                    Nom classe<select class="form-control" style="width: 200px;margin-left: 136px;"  name="nomclasse">
                        <option value="0" disabled selected><%=m.getNomClasse()%></option>
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
                  Nom Professeur <select class="form-control" style="width: 200px;margin-left: 136px;"  name="nomprof">
                        <option value="0" disabled selected><%=m.getNomProfesseur()%></option>
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
                   Nom Matiere <input type="text" style="width: 200px;margin-left:50px;" style placeholder="<%=m.getNomMatiere()%>" name="nommatiere">
                </div>

                <div class="form-group">
                   Nom Surveillant <select class="form-control" style="width: 200px;margin-left: 136px;"  name="nomsurv">
                        <option value="0" disabled selected><%=m.getNomSurveillant()%></option>
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
                   Nom Salle <select class="form-control" style="width: 200px;margin-left: 136px;"  name="nomsalle">
                        <option value="0" disabled selected><%=m.getNomSalle()%></option>
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
                   Jour Examen <input type="date" name='jour' style="width: 200px;margin-left: 136px;" value="<%=m.getJour()%>"  class="form-control" data-date-format="mm/dd/yyyy"/>
                </div>
                <div class="form-group">
                  Semestre  <select class="form-control" style="width: 200px;margin-left: 136px;"  name="semester">
                        <option value="0" disabled selected><%=m.getSemestre()%></option>
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

<%@page import="com.emsi.classes.Matiere"%>
<%@page import="com.emsi.dao.MatiereDao"%>
<%@page import="com.emsi.classes.Classe"%>
<%@page import="com.emsi.dao.ClasseDao"%>
<script src="js/jquery.js" type="text/javascript"></script>
<%@include file="head.jsp" %>

<form action="Addexamserv" method="post">
    <div class="container">
        <div class="col-lg-3 col-md-3 col-xs-12">

            <select class="form-control"  name="semester">
                <option value="0" disabled selected>Semestre</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">Rattrapage</option>
            </select>

        </div>
        <div class="col-lg-3 col-md-3 col-xs-12">

            <select class="form-control"  name="classe">
                <option value="0" disabled selected>Choisir une classe</option>
                <%
                    ClasseDao cd = new ClasseDao();
                    for (Classe c : cd.getAll()) {
                %>
                <option value="<%= c.getId()%>"><%=c.getNomClasse()%></option>
                <%
                    }
                %>
            </select>

        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-bordered table-hover" id="tab_logic">
                    <thead>
                        <tr >
                            <th class="text-center">
                                Jour
                            </th>
                            <th class="text-center">
                                Matière
                            </th>
                            <th class="text-center">
                                Horaire
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr id='addr0'>
                            <td>
                                <input type="date" name='jour[]'  class="form-control" data-date-format="mm/dd/yyyy"/>

                            </td>
                            <td>
                                <select class="form-control"  name="matiere[]">
                                    <option value="0" disabled selected>Choisir une Matiere</option>
                                    <%
                                        MatiereDao md = new MatiereDao();
                                        for (Matiere m : md.getAll()) {
                                    %>
                                    <option value="<%= m.getId()%>"><%=m.getNomMatiere()%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </td>
                            <td>
                                <input type="text" id="timed" name='startTime[]' placeholder='Horaire' style="width: 15%;" class="time ui-timepicker-input"/>
                                <input type="text" id="timee" name='endTime[]' placeholder='Horaire' style="width: 15%;" class="time ui-timepicker-input"/>

                            </td>
                        </tr>
                        <tr id='addr1'></tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-lg-12 col-md-12 col-xs-12">
            <a id="add_row" class="btn btn-default pull-left">Ajouter un Champ</a><a id='delete_row' class="pull-right btn btn-default">Supprimer le dernier Champ</a>
        </div>
        <div class="col-lg-12 col-md-12 col-xs-12" style="margin-top: 20px;">

            <input class="form-control col-lg-12 col-md-12 btn btn-success btn-xs" type="submit" value="Valider"/>
            <input class="form-control col-lg-12 col-md-12 btn btn-success btn-xs" type="button" value="Liste des Examens"
                   onclick="openPage('listexam.jsp')"/>

        </div>
    </div>
</form>

<%@include file="footer.jsp" %>
<script type="text/javascript">
            function openPage(pageURL)
            {
                window.location.href = pageURL;
            }
        </script>
<script>
    var $ = jQuery;
    $(document).ready(function () {
        var i = 1;
        $("#add_row").click(function () {
            var ch = "";
            ch += "<td><input name=" + "jour[]" + i + "' type='date' placeholder='Jour' class='form-control' data-date-format'mm/dd/yyyy'/> </td>\n\
<td><select  name=" + "matiere[]" + i + "' class='form-control input-md'>\n\
<option value='0' disabled selected>Choisir une Matiere</option>\n\
    <% for (Matiere m : md.getAll()) {%> \n\
\n\
<option value='<%= m.getId()%>'><%=m.getNomMatiere()%></option>\n\
\n\
    <%}%></select></td>\n\
<td>\n\
<input  name=" + "startTime[]" + " id='time'" + i + " type='text' placeholder='Horaire'  style='width: 15%;' class=" + "time ui-timepicker-input" + ">\n\
<input  name=" + "endTime[]" + " id='time'" + i + " type='text' placeholder='Horaire'  style='width: 15%;' class=" + "time ui-timepicker-input" + ">\n\
</td>";
            $('#addr' + i).html(ch);
            $('#tab_logic').append('<tr id="addr' + (i + 1) + '"></tr>');
            i++;
        });
        $("#delete_row").click(function () {
            if (i > 1) {
                $("#addr" + (i - 1)).html('');
                i--;
            }
        });
        $('.time').timepicker();
      
    });
</script>


</body>
</html>
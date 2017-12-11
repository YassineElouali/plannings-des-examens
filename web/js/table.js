var $ = jQuery;
$(document).ready(function () {
    var i = 1;
    $("#add_row").click(function () {
        $('#addr' + i).html("<td><input name='jour" + i + "' type='date' placeholder='Jour' class='form-control' data-date-format'mm/dd/yyyy'/> </td>\n\
    <td><input  name='matiere" + i + "' type='text' placeholder='Matiere'  class='form-control input-md'></td>\n\
<td>\n\
    <input  name='startTime" + i + "' id='time' type='text' placeholder='Horaire'  style='width: 15%;' class='time ui-timepicker-input'>\n\
    <input  name='endTime" + i + "' id='time' type='text' placeholder='Horaire'  style='width: 15%;' class='time ui-timepicker-input'>\n\
</td>");

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
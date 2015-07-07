/**
 * Created by Tecnosoluciones on 03/07/2015.
 */
function iniciar (){
    var dialog = $( "#ventanaModal" ).dialog({
        autoOpen: false,
        height: 300,
        width: 350,
        modal: true,
        close: function( event, ui ) {
            location.reload();
        }
    });

    function recompilar(){
        $("#update").submit(function(event){
            event.preventDefault();
            console.log(this);
            $.ajax({
                url : 'controllers/setFechaContrato.php',
                method : 'POST',
                data : $(this).serialize(),
                success:function(data){
                    $('#ventanaModal').html(data);
                }
            })
        });
    }

    $.ajax({
        method : "POST",
        url : 'controllers/getAllUsers.php'
    }).done(function(data){
        //console.log(data);
        var tablaContenedora = $("#tableContainer");
        tablaContenedora.html(data);

        var botonesDeTabla = tablaContenedora.find("button");
        botonesDeTabla.hover(function(){
            $( this).find('i').addClass('fa-spin');
        },function(){
            $( this).find('i').removeClass('fa-spin');
        });
        botonesDeTabla.click(function(){
            var trParent = $(this).parent().parent();
            var idPerfil = trParent.find('td:first-child').text();
            var nombrePerfil = trParent.find('td:nth-child(2)').text();

            var codigoHTML = '<form id="update">' +
                '<input type="hidden" name="idPerfil" value="'+idPerfil+'">' +
                '<label>Fecha de corte del nuevo contrato para '+nombrePerfil+'</label><input type="date" name="nuevaFecha" placeholder="yyyy-mm-dd"><br><br>' +
                '<input type="submit">' +
                '</form>';

            dialog.html(codigoHTML);
            recompilar();
            dialog.dialog("open");
        });
    });


}

$(document).ready(iniciar);
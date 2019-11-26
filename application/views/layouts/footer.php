<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
</footer>
</div>
<!-- ./wrapper -->
<!-- jQuery 3 -->
<script src="<?php echo base_url(); ?>assets/template/jquery/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(); ?>assets/template/bootstrap/js/bootstrap.min.js"></script>
<!-- JQuery UI -->
<script src="<?php echo base_url(); ?>assets/template/jquery-ui/jquery-ui.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>assets/template/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- DataTables -->
<script src="<?php echo base_url(); ?>assets/template/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/template/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url(); ?>assets/template/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/template/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/template/dist/js/demo.js"></script>
<script>
    $(document).ready(function () {
        var base_url = "<?php echo base_url(); ?>";
        $(".btn-view").on("click", function () {
            var id = $(this).val();
            $.ajax({
                url: base_url + "controller/categorias/view/" + id,
                type: "POST",
                success: function (resp) {
                    $("#modal-default .modal-body").html(resp);
                    //alert(resp);
                }
            });
        });
        $('#example1').DataTable({
            "language": {
                "lengthMenu": "Mostrar _MENU_ registros por pagina",
                "zeroRecords": "No se encontro resultados de la busqueda",
                "searchPlaceholder": "Buscar registros",
                "info": "Mostrando registros de _START_ al _END_ de un total de _TOTAL_ registros",
                "infoEmpty": "No existen registros",
                "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                "search": "Buscar",
                "paginate": {
                    "first": "Primero",
                    "last": "Ultimo",
                    "next": "Siguiente",
                    "previous": "Anterior"
                }
            }
        });


        $('.sidebar-menu').tree();










        //var data;
        $("#cursoaagregar").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: base_url + "controller/cargas/getcursos",
                    type: "POST",
                    dataType: "json",
                    data: {valor: request.term},
                    success: function (data) {
                        response(data);
                        //alert(data);
                        //response(data);
                    }
                });
            },
            minLength: 2,
            select: function (event, ui) {
                //Por estandar
//                data = ui.item.idtb_curso + "*" + ui.item.codigo + "*" + ui.item.label + "*" + ui.item.creditos + "*" + ui.item.idtb_ciclo;
                data = ui.item.id_curso + "*" + ui.item.codigo + "*" + ui.item.label + "*" + ui.item.creditos + "*" + ui.item.idtb_ciclo;
                //data = ui.item.idtb_curso;
                $("#btn-agregar").val(data);
            }
        });

        //var data;
        $("#diaaagregar").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: base_url + "controller/cargas/getdias",
                    type: "POST",
                    dataType: "json",
                    data: {valor: request.term},
                    success: function (data) {
                        response(data);
                        //alert(data);
                        //response(data);
                    }
                });
            },
            minLength: 2,
            select: function (event, ui) {
                //Por estandar
                data = ui.item.idtb_dia + "*" + ui.item.label;
                //data = ui.item.idtb_curso;
                $("#btn-agregar-dia").val(data);
            }
        });

        $("#agregarsemana").autocomplete({
            source: function (request, response) {
                $.ajax({
                    url: base_url + "controller/plantrabajo/getsemana",
                    type: "POST",
                    dataType: "json",
                    data: {valor: request.term},
                    success: function (data) {
                        response(data);
                        //alert(data);
                        //response(data);
                    }
                });
            },
            minLength: 2,
            select: function (event, ui) {
                //Por estandar
//                data = ui.item.idtb_numero_semana + "*" + ui.item.label;
                data = ui.item.id_numero_semana + "*" + ui.item.label;
                //data = ui.item.idtb_curso;
                $("#btn-agregar-semana").val(data);
            }
        });




        $(document).on("click", ".btn-view-carga", function () {
            valor_id = $(this).val();
            $.ajax({
                url: base_url + "controller/cargas/view",
                type: "POST",
                dataType: "html",
                data: {
                    id: valor_id
                },
                success: function (data) {
                    $("#modal-default .modal-body").html(data);
                }
            })
        });



    });



    $("#btn-agregar").on("click", function () {
        data = $(this).val();
        if (data !== '') {
            infocurso = data.split("*");
            html = "<tr>";
            html += "<td><input type='hidden' name='idcurso' value='" + infocurso[0] + "'>" + infocurso[0] + "</td>";
            html += "<td>" + infocurso[1] + "</td>";
            html += "<td>" + infocurso[2] + "</td>";
            html += "<td>" + infocurso[3] + "</td>";
            html += "<td><input type='hidden' name='idciclo' value='" + infocurso[4] + "'>" + infocurso[4] + "</td>";
            /*
             html += "<td><input type='text' name='dias' value='1'></td>";
             */
            html += "<td><button type='button' class='btn btn-danger btn-remove-curso'><span class='fa fa-remove'></span></button></td>";
            html += "</tr>";

            $("#tbagregarcargas tbody").append(html);
        } else {
            alert("Seleccione un curso");
        }
    });
    $(document).on("click", ".btn-remove-curso", function () {
        $(this).closest("tr").remove();
    });





    $("#btn-agregar-dia").on("click", function () {
        data = $(this).val();
        if (data !== '') {
            infodia = data.split("*");
            html = "<tr>";
            html += "<td><input type='hidden' name='arreglo_dias[]' value='" + infodia[0] + "'>" + infodia[1] + "</td>";
            html += "<td><input type='text' name='arreglo_horas_inicio[]' value='08:00'></td>";
            html += "<td><input type='text' name='arreglo_horas_fin[]' value='08:00'></td>";
            /*
             html += "<td><input type='text' name='dias' value='1'></td>";
             */
            html += "<td><button type='button' class='btn btn-danger btn-remove-dia'><span class='fa fa-remove'></span></button></td>";
            html += "</tr>";

            $("#tbagregarcargas tbody").append(html);
        } else {
            alert("Seleccione un dia");
        }
    });
    $(document).on("click", ".btn-remove-dia", function () {
        $(this).closest("tr").remove();
    });
    
    
    
    
    
    
    $("#btn-agregar-semana").on("click", function () {
        data = $(this).val();
        if (data !== '') {
            infosemana = data.split("*");
            html = "<tr>";
            html += "<td><input type='hidden' name='semanas[]' value='" + infosemana[0] + "'>" + infosemana[1] + "</td>";
            html += "<td><input type='text' name='plantrabajo[]' value=''></td>";
            /*
             html += "<td><input type='text' name='dias' value='1'></td>";
             */
            html += "<td><button type='button' class='btn btn-danger btn-remove-dia'><span class='fa fa-remove'></span></button></td>";
            html += "</tr>";

            $("#tbagregarplan tbody").append(html);
        } else {
            alert("Seleccione la semana");
        }
    });
    $(document).on("click", ".btn-remove-dia", function () {
        $(this).closest("tr").remove();
    });





    //Carga Academica - Agregar - Buscar Docente
    $(document).on("click", ".btn-check-docente", function () {
        docente = $(this).val();
        infodocente = docente.split("*");
        $("#id_un_docente").val(infodocente[0]);
        $("#nombre_un_docente").val(infodocente[1]);
        $("#modal-default").modal("hide");
    });
    $(document).on("click", ".btn-check-curso", function () {
        curso = $(this).val();
        infocurso = curso.split("*");
        $("#id_un_curso").val(infocurso[0]);
        $("#nombre_un_curso").val(infocurso[1] + " - " + infocurso[2]);
        $("#modal-default-curso").modal("hide");
    });
    $(document).on("click", ".btn-check-actividad", function () {
        actividad = $(this).val();
        infoactividad = actividad.split("*");
        $("#id_un_actividad").val(infoactividad[0]);
        $("#nombre_un_actividad").val(infoactividad[1]);
        $("#modal-default-actividad").modal("hide");
    });
    $(document).on("click", ".btn-check-plan", function () {
        plantrabajo = $(this).val();
        infoplan = plantrabajo.split("*");
        $("#id_un_plan").val(infoplan[0]);
        $("#nombre_un_plan").val(infoplan[1]+ " - " +infoplan[2]);
        $("#modal-default-plantrabajo").modal("hide");
    });




    $(document).ready(function () {
        $('#exampleDocente').DataTable({
            "language": {
                "lengthMenu": "Mostrar _MENU_ registros por pagina",
                "zeroRecords": "No se encontro resultados de la busqueda",
                "searchPlaceholder": "Buscar registros",
                "info": "Mostrando registros de _START_ al _END_ de un total de _TOTAL_ registros",
                "infoEmpty": "No existen registros",
                "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                "search": "Buscar",
                "paginate": {
                    "first": "Primero",
                    "last": "Ultimo",
                    "next": "Siguiente",
                    "previous": "Anterior"
                }
            },
            "pageLength": 5
        });
    });
    $(document).ready(function () {
        $('#exampleCurso').DataTable({
            "language": {
                "lengthMenu": "Mostrar _MENU_ registros por pagina",
                "zeroRecords": "No se encontro resultados de la busqueda",
                "searchPlaceholder": "Buscar registros",
                "info": "Mostrando registros de _START_ al _END_ de un total de _TOTAL_ registros",
                "infoEmpty": "No existen registros",
                "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                "search": "Buscar",
                "paginate": {
                    "first": "Primero",
                    "last": "Ultimo",
                    "next": "Siguiente",
                    "previous": "Anterior"
                }
            },
            "pageLength": 5
        });
    });









    $(document).ready(function () {
        $('#example2')
                .dataTable({
                    "responsive": true
                });
    });
</script>
</body>
</html>

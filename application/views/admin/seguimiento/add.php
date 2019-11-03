

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Reporte Semanal
            <small>Nuevo</small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box box-solid">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-12">

                        <form action="<?php echo base_url(); ?>mantenimiento/seguimiento/registrar" method="POST" class="form-horizontal">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="">Actividad</label>
                                    <div class="input-group">
                                        <input type="hidden" name="id_un_actividad" id="id_un_actividad">
                                        <input type="text" class="form-control" disabled="disabled" id="nombre_un_actividad">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-default-actividad" ><span class="fa fa-search"></span> Buscar </button>
                                        </span>
                                    </div><!-- /input-group -->
                                </div>                              
                                <div class="col-md-6">
                                    <label for="seccion"> Plan de Trabajo </label>
                                    <div class="input-group">
                                        <input type="hidden" name="id_un_docente" id="id_un_docente">
                                        <input type="text" class="form-control" disabled="disabled" id="nombre_un_docente">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-default" ><span class="fa fa-search"></span> Buscar</button>
                                        </span>
                                    </div><!-- /input-group -->
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="">Semana</label>
                                    <input type="text" class="form-control" id="semana">
                                </div>
                                <div class="col-md-2">
                                    <label for="">&nbsp;</label>
                                    <button id="btn-agregar-semana" type="button" class="btn btn-success btn-flat btn-block"><span class="fa fa-plus"></span> Agregar </button>
                                </div>
                            </div>

                            <div clas=""form-group style="text-align: left;">
                                <label for="reporte"> Reporte Semanal </label>
                                <div class="col-md-12">
                                    <textarea name="textarea" id="textarea" autofocus minlength="20" rows="10" cols="75" placeholder="Introducir el reporte semanal" required></textarea>
                                </div>
                            </div>                        
                            
                            <div class="form-group" style="text-align: center;">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-success btn-flat">Guardar</button>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<div class="modal fade" id="modal-default-actividades">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Lista de Actividades</h4>
            </div>
            <div class="modal-body">
                <table id="exampleActividad" class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>                           
                            <th>Descripcion</th>                           
                            <th>Opcion</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->












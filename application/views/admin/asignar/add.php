

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cargas no Lectiva
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

                        <form action="<?php echo base_url(); ?>mantenimiento/asignar/registrar" method="POST" class="form-horizontal">                           

                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="">Docente</label>
                                    <div class="input-group">
                                        <input type="hidden" name="id_un_docente" id="id_un_docente">
                                        <input type="text" class="form-control" disabled="disabled" id="nombre_un_docente">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-default" ><span class="fa fa-search"></span> Buscar</button>
                                        </span>
                                    </div><!-- /input-group -->
                                </div>
                                <!--
                                <div class="col-md-3">
                                    <label for="">Fecha</label>
                                    <input type="date" class="form-control" name="fecha" required>
                                </div>
                                -->
                                <div class="col-md-6">
                                    <label for="">Asignacion</label>
                                    <div class="input-group">
                                        <input type="hidden" name="id_un_actividad" id="id_un_actividad">
                                        <input type="text" class="form-control" disabled="disabled" id="nombre_un_actividad">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-default-actividad" ><span class="fa fa-search"></span> Buscar </button>
                                        </span>
                                    </div><!-- /input-group -->
                                </div>
                            </div>                 

                            <div class="form-group">
                                <div class="col-md-6">

                                    <label for="">Horas</label>
                                    <input type="number" class="form-control" name="horasdeactividad" id="horasdeactividad">
                                </div>
                                <!--
                                <div class="col-md-2">
                                    <label for="">&nbsp;</label>
                                    <button id="btn-agregar-dia" type="button" style="border-radius: 8px;" class="btn btn-success btn-flat btn-block"><span class="fa fa-plus"></span> Agregar </button>
                                </div>
                                -->
                            </div>

                          

                            <div class="form-group" style="text-align: center;">
                                <div class="col-md-12">
                                    <button type="submit" style="border-radius: 8px;" class="btn btn-success btn-flat">Guardar</button>
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



<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Lista de Docentes</h4>
            </div>
            <div class="modal-body">
                <table id="exampleDocente" class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Codigo</th>
                            <th>Documento</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Opcion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($todoslosdocentes)): ?>
                            <?php foreach ($todoslosdocentes as $docente): ?>
                                <tr>
                                    <td><?php echo $docente->idtb_docente; ?></td>
                                    <td><?php echo $docente->codigo; ?></td>
                                    <td><?php echo $docente->documento; ?></td>
                                    <td><?php echo $docente->nombre; ?></td>
                                    <td><?php echo $docente->apellido; ?></td>
                                    <!--
                                    <td><?php echo $docente->apellido; ?></td>
                                    <td><?php echo $docente->tipousuario; ?></td>
                                    <td><?php echo $docente->tipodocente; ?></td>
                                    -->
                                    <?php $datadocente = $docente->idtb_docente . "*" . $docente->codigo . "*" . $docente->documento . "*" . $docente->nombre . "*" . $docente->apellido; ?>
                                    <td>
                                        <button type="button" class="btn btn-success btn-check btn-check-docente" value="<?php echo $datadocente; ?>" ><span class="fa fa-check"></span></button>
                                        
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
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







<div class="modal fade" id="modal-default-actividad">
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
                        <?php if (!empty($todaslasactividades)): ?>
                            <?php foreach ($todaslasactividades as $actividad): ?>
                                <tr>
                                    <td><?php echo $actividad->idtb_actividad; ?></td>                                   
                                    <td><?php echo $actividad->descripcion; ?></td>                                                                                                                                            
                                    <?php $dataactividad = $actividad->idtb_actividad . "*" . $actividad->descripcion; ?>
                                    <td>
                                        <button type="button" class="btn btn-success btn-check btn-check-actividad" value="<?php echo $dataactividad; ?>" ><span class="fa fa-check"></span></button>
                                        
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
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
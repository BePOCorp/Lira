

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Asignar Carga no Lectiva
            <small>Listado</small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box box-solid">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-12">
                        <a href="<?php echo base_url(); ?>mantenimiento/asignar/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Asignar Carga no Lectiva </a>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12" >
                        <table  id="example1" class="table table-bordered btn-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Docente</th>
                                    <th>Actividad</th>
                                    <th>Horas</th>
                                    <th>Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($todaslasasignaciones)): ?>
                                    <?php foreach ($todaslasasignaciones as $una_asignacion): ?>
                                        <tr>
                                            <td><?php echo $una_asignacion->idtb_carga_no_lectiva; ?></td>
                                            <td><?php echo $una_asignacion->docente; ?></td>
                                            <td><?php echo $una_asignacion->actividad; ?></td>
                                            <td><?php echo $una_asignacion->horas; ?></td>
                                            <td>
                                                <div class="btn-group">
                                                    <!--
                                                    <button type="button" class="btn btn-info btn-view" data-toggle="modal" data-target="#modal-default" value="<?php echo $carga->idtb_carga; ?>">
                                                        <span class="fa fa-search"></span>
                                                    </button>
                                                    -->
                                                    <button type="button" class="btn btn-info btn-view-carga" data-toggle="modal" data-target="#modal-default" value="<?php echo $una_asignacion->idtb_carga_no_lectiva; ?>">
                                                        <span class="fa fa-search"></span>
                                                    </button>
                                                    <a href="<?php echo base_url(); ?>mantenimiento/asignar/edit/<?php echo $una_asignacion->idtb_carga_no_lectiva; ?>" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
                                                    <!--
                                                    <a href="#" class="btn btn-danger"><span class="fa fa-remove"></span></a>
                                                    -->
                                                </div>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </tbody>
                        </table>
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
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">Informacion de la Carga</h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">
                    Cerrar
                </button>
                <!--
                <button type="button" class="btn btn-primary">
                    Save changes
                </button>
                -->
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
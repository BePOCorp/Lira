

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cargas
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
                        <a href="<?php echo base_url(); ?>controller/cargas/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Agregar Carga</a>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12" >
                        <table  id="example1" class="table table-bordered btn-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Semestre</th>
                                    <th>Docente</th>
                                    <th>Curso</th>
                                    <th>Seccion</th>
                                    <th>Turno</th>
                                    <th>Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($todaslascargas)): ?>
                                    <?php foreach ($todaslascargas as $carga): ?>
                                        <tr>
                                            <td><?php echo $carga->id_carga; ?></td>
                                            <td><?php echo $carga->semestre; ?></td>
                                            <td><?php echo $carga->docente; ?></td>
                                            <td><?php echo $carga->curso; ?></td>
                                            <td><?php echo $carga->seccion; ?></td>
                                            <td><?php echo $carga->turno; ?></td>
                                            <td>
                                                <div class="btn-group">
                                                    
<!--                                                    <button type="button" class="btn btn-info btn-view" data-toggle="modal" data-target="#modal-default" value="<?php echo $carga->idtb_carga;?>">
                                                        <span class="fa fa-search"></span>
                                                    </button>-->
                                                    
<!--                                                    <button type="button" class="btn btn-info btn-view-carga" data-toggle="modal" data-target="#modal-default" value="<?php echo $carga->idtb_carga;?>">
                                                        <span class="fa fa-search"></span>
                                                    </button>-->
                                                    <a href="<?php echo base_url(); ?>controller/cargas/edit/<?php echo $carga->id_carga;?>" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
                                                    
<!--                                                    <a href="#" class="btn btn-danger"><span class="fa fa-remove"></span></a>-->
                                                    
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
                <h4 class="modal-title">Informacion de la Carga Academica Lectiva</h4>
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



<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Actividades
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
                        <a href="<?php echo base_url(); ?>controller/actividades/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Agregar Actividad </a>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12" >
                        <table  id="example1" class="table table-bordered btn-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Descripcion</th>
                                    <th>Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($todaslasactividades)): ?>
                                    <?php foreach ($todaslasactividades as $unaactividad): ?>
                                        <tr>
                                            <td><?php echo $unaactividad->idtb_actividad; ?></td>
                                            <td><?php echo $unaactividad->descripcion; ?></td>
                                            <td>
                                                <div class="btn-group">
                                                    <a href="<?php echo base_url(); ?>controller/actividades/edit/<?php echo $unaactividad->idtb_actividad;?>" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
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


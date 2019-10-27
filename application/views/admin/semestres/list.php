

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Semestres
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
                        <a href="<?php echo base_url(); ?>mantenimiento/semestres/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Agregar Semestre</a>
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
                                    <th>Tipo</th>
                                    <th>Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($todoslossemestres)): ?>
                                    <?php foreach ($todoslossemestres as $unsemestre): ?>
                                        <tr>
                                            <td><?php echo $unsemestre->idtb_semestre; ?></td>
                                            <td><?php echo $unsemestre->descripcion; ?></td>
                                            <td><?php echo $unsemestre->tipo; ?></td>
                                            <td>
                                                <div class="btn-group">
                                                    <a href="<?php echo base_url(); ?>mantenimiento/semestres/edit/<?php echo $unsemestre->idtb_semestre;?>" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
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


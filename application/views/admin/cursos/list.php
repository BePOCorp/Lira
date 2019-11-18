

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cursos
            <small>Listado</small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box box-solid">
            <div class="box-body">
                <!--
                <div class="row">
                    <div class="col-md-12">
                        <a href="<?php echo base_url(); ?>controller/docentes/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Agregar Docente</a>
                    </div>
                </div>
                <hr>
                -->
                <div class="row">
                    <div class="col-md-12" >
                        <table  id="example1" class="table table-bordered btn-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Creditos</th>
                                    <th>Horas</th>
                                    <th>N° ciclo</th>
                                    <th>Ciclo</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($todosloscursos)): ?>
                                    <?php foreach ($todosloscursos as $uncurso): ?>
                                        <tr>
                                            <td><?php echo $uncurso->idtb_curso; ?></td>
                                            <td><?php echo $uncurso->codigo; ?></td>
                                            <td><?php echo $uncurso->descripcion; ?></td>
                                            <td><?php echo $uncurso->creditos; ?></td>
                                            <td><?php echo $uncurso->horas; ?></td>
                                            <td><?php echo $uncurso->idtb_ciclo; ?></td>
                                            <td><?php echo $uncurso->ciclo; ?></td>
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



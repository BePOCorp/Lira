<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Categorias
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
                        <a href="<?php echo base_url(); ?>mantenimiento/categorias/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Agregar Categoria</a>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12" >
                        <table  id="example1" class="table table-bordered btn-hover">
                            <thead>
                                <tr>
                                    <th>idtb_docente</th>
                                    <th>codigo</th>
                                    <th>documento</th>
                                    <th>idtb_tipo_docente</th>
                                    <th>idtb_usuario</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($docentes)): ?>
                                    <?php foreach ($docentes as $docentes): ?>
                                        <tr>
                                            <td><?php echo $docentes->idtb_docente; ?></td>
                                            <td><?php echo $docentes->codigo; ?></td>
                                            <td><?php echo $docentes->documento; ?></td>
                                            <td><?php echo $docentes->idtb_tipo_docente; ?></td>
                                            <td><?php echo $docentes->idtb_usuario; ?></td>
                                            <td>
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-info btn-view" data-toggle="modal" data-target="#modal-default" value="<?php echo $docentes->idtb_docente;?>">
                                                        <span class="fa fa-search"></span>
                                                    </button>
                                                    <a href="<?php echo base_url(); ?>mantenimiento/categorias/edit/<?php echo $docentes->idtb_docente;?>" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
                                                    <a href="#" class="btn btn-danger"><span class="fa fa-remove"></span></a>
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





<!--
<script>
  $(function () {
    $('#example1').DataTable();
  });
</script>
-->



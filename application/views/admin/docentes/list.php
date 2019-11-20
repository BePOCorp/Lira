

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Docentes
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
                        <a href="<?php echo base_url(); ?>controller/docentes/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Agregar Docente</a>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12" >
                        <table  id="example1" class="table table-bordered btn-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre Completo</th>
                                    <th>Telefono</th>
                                    <th>Direccion</th>
                                    <th>Correo</th>
<!--                                    <th>Jefe Departamento</th>
                                    <th>Postulante</th>-->
                                    <th>Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($docentes)): ?>
                                    <?php foreach ($docentes as $un_docente): ?>
                                        <tr>
                                            <td><?php echo $un_docente->id_docente; ?></td>
                                            <td><?php echo $un_docente->docente; ?></td>
                                            <td><?php echo $un_docente->telefono; ?></td>
                                            <td><?php echo $un_docente->id_direccion; ?></td>
                                            <td><?php echo $un_docente->correo; ?></td>
<!--                                            <td><?php echo $un_docente->jefe_departamento; ?></td>
                                            <td><?php echo $un_docente->id_postulante; ?></td>-->
                                            <td>
                                                <div class="btn-group">
                                                    
<!--                                                    <button type="button" class="btn btn-info btn-view" data-toggle="modal" data-target="#modal-default" value="<?php echo $docentes->idtb_docente;?>">
                                                        <span class="fa fa-search"></span>
                                                    </button>-->
                                                    
                                                    <a href="<?php echo base_url(); ?>controller/docentes/edit/<?php echo $un_docente->id_docente;?>" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
                                                    
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





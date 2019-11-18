

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Plan de Trabajo
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
                        <a href="<?php echo base_url(); ?>controller/plantrabajo/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Agregar Plan de Trabajo </a>
                    </div>
                </div>
                <hr>             
                <div class="row">
                    <div class="col-md-12" >
                        <table  id="example1" class="table table-bordered btn-hover">
                            <thead>
                                <tr>
                                    <th>Semana</th>
                                    <th>Actividad</th>
                                    <th>Plan de Trabajo</th>                                   
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty($todoslosplan)): ?>
                                    <?php foreach ($todoslosplan as $plan): ?>
                                <tr>
                                    <td><?php echo $plan->semana; ?></td>
                                    <td><?php echo $plan->actividad; ?></td>
                                    <td><?php echo $plan->plantrabajo; ?></td>
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



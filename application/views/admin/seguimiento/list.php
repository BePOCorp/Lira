

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Reporte Semanal
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
                        <a href="<?php echo base_url(); ?>mantenimiento/seguimiento/add" class="btn btn-primary btn-flat"><span class="fa fa-plus"></span> Agregar Carga</a>
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
                                    <th>Reporte</th> 
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (!empty("")): ?>
                                    
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>                                          
                                            <td>
                                                <div class="btn-group">
                                                    <!--
                                                    <button type="button" class="btn btn-info btn-view" data-toggle="modal" data-target="#modal-default" value="<?php echo $carga->idtb_carga;?>">
                                                        <span class="fa fa-search"></span>
                                                    </button>
                                                    -->
                                                    <button type="button" class="btn btn-info btn-view-carga" data-toggle="modal" data-target="#modal-default" value="<?php echo $carga->idtb_carga;?>">
                                                        <span class="fa fa-search"></span>
                                                    </button>
                                                    <a href="<?php echo base_url(); ?>mantenimiento/cargas/edit/<?php echo $carga->idtb_carga;?>" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
                                                    <!--
                                                    <a href="#" class="btn btn-danger"><span class="fa fa-remove"></span></a>
                                                    -->
                                                </div>
                                            </td>
                                        </tr>
                                    
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

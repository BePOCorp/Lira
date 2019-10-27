

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Docentes
            <small>Nuevo</small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box box-solid">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-12" >
                        <?php if ($this->session->flashdata("error")): ?>
                            <div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <p><i class="icon fa fa-ban"></i><?php echo $this->session->flashdata("error") ?></p>
                            </div>
                        <?php endif; ?>
                        <form action="<?php echo base_url(); ?>mantenimiento/docentes/registrar" method="POST">
                            <div class="form-group col-md-6">
                                <label for="codigo">Codigo</label>
                                <input type="text" class="form-control" autofocus id="codigo" name="codigo" maxlength="45" placeholder="Ingrese codigo" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="documento">Documento de identidad</label>
                                <input type="text" class="form-control" autofocus id="documento" name="documento" maxlength="45" placeholder="Ingrese documento" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" autofocus id="nombre" name="nombre" maxlength="45" placeholder="Ingrese nombre" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="apellido">Apellido</label>
                                <input type="text" class="form-control" autofocus id="apellido" name="apellido" maxlength="45" placeholder="Ingrese apellido" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="tipodocentelista">Tipo de docente</label>
                                <select class="form-control" id="tipodocentelista" name="tipodocentelista">
                                    <?php foreach($tiposdocentes as $tiposdocente): ?>
                                        <option value="<?php echo $tiposdocente->idtb_tipo_docente ?>" ><?php echo $tiposdocente->descripcion; ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="form-group col-md-12" style="text-align: center;">
                                <button type="submit" class="btn btn-success btn-flat" style="border-radius: 8px;">Guardar</button>
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






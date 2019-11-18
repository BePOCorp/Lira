

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Docentes
            <small>Editar</small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box box-solid">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-12" >
                        <?php if($this->session->flashdata("error")):?>
                            <div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <p><i class="icon fa fa-ban"></i><?php echo $this->session->flashdata("error")?></p>
                            </div>
                        <?php endif;?>
                        <form action="<?php echo base_url(); ?>controller/docentes/update" method="POST">
                            <!--
                            <div class="form-group col-md-6">
                                <label for="docente">Id docente</label> -->
                                <input type="hidden" class="form-control" id="docente" name="docente" value="<?php echo $undocente->idtb_docente?>" readonly >
                            <!--
                            </div>
                            <div class="form-group col-md-6">
                                <label for="usuario">Id usuario</label>-->
                                <input type="hidden" class="form-control" id="usuario" name="usuario" value="<?php echo $undocente->idtb_usuario?>" readonly >
                            <!--
                            </div>
                            -->
                            <div class="form-group col-md-6">
                                <label for="codigo">Codigo</label>
                                <input type="text" class="form-control" id="codigo" name="codigo" value="<?php echo $undocente->codigo?>" >
                            </div>
                            <div class="form-group col-md-6">
                                <label for="documento">Documento de identidad</label>
                                <input type="text" class="form-control" id="documento" name="documento" value="<?php echo $undocente->documento?>" >
                            </div>
                            <div class="form-group col-md-6">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" value="<?php echo $undocente->nombre?>" >
                            </div>
                            <div class="form-group col-md-6">
                                <label for="apellido">Apellido</label>
                                <input type="text" class="form-control" id="apellido" name="apellido" value="<?php echo $undocente->apellido?>" >
                            </div>
                            <div class="form-group col-md-6">
                                <label for="tipodocentelista">Tipo de docente</label>
                                <select class="form-control" id="tipodocentelista" name="tipodocentelista">
                                    <!--<option value="<?php echo $undocente->idtipodocente ?>" ><?php echo $undocente->tipodocente ?></option>-->
                                    <?php foreach($tiposdocentes as $tiposdocente): ?>
                                        <?php if($tiposdocente->idtb_tipo_docente == $undocente->idtipodocente): ?>
                                            <option value="<?php echo $tiposdocente->idtb_tipo_docente ?>" selected><?php echo $tiposdocente->descripcion; ?></option>
                                        <?php else: ?>
                                            <option value="<?php echo $tiposdocente->idtb_tipo_docente ?>" ><?php echo $tiposdocente->descripcion; ?></option>
                                        <?php endif ?>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <!--
                            <div class="form-group col-md-6">
                                <label for="tipousuario">Tipo de Usuario</label>
                                <input type="text" class="form-control" id="tipousuario" name="tipousuario" value="<?php echo $undocente->tipousuario?>" >
                            </div>
                            -->
                            <div class="form-group col-md-12" style="text-align: center;">
                                <button type="submit" class="btn btn-success btn-flat" style="border-radius: 8px;">Editar</button>
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

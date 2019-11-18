
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Categorias
            <small>Nueva Categoria</small>
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
                        <form action="<?php echo base_url(); ?>controller/categorias/registrar" method="POST">
                            <div class="form-group col-md-6">
                                <label for="plaza">Plaza</label>
                                <input type="text" class="form-control" autofocus id="plaza"  maxlength="6"  name="plaza">
                                
                            </div>
                            <div class="form-group col-md-6">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" autofocus id="nombre"  name="nombre">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="apellidos">Apellidos</label>
                                <input type="text" class="form-control" autofocus id="apellidos"  name="apellidos">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="descripcion">Tipo de Contratacion</label>
                                <input type="text" class="form-control" id="descripcion"  autofocus name="descripcion">
                            </div>                     
                            <div class="form-group">
                                <button type="submit" class="btn btn-success btn-flat">Guardar</button>
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
<script type="text/javascript"> function controltag(e) {
        tecla = (document.all) ? e.keyCode : e.which;
        if (tecla == 8)
            return true;
        else if (tecla == 0 || tecla == 9)
            return true;
        // patron =/[0-9\s]/;// -> solo letras
        patron = /[0-9\s]/;// -> solo numeros
        te = String.fromCharCode(tecla);
        return patron.test(te);
    }
</script>
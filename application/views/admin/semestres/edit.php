

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Semestres
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
                        <form action="<?php echo base_url(); ?>controller/semestres/update" method="POST">
                            <!--
                            <div class="form-group col-md-6">
                                <label for="docente">Id docente</label> -->
                                <input type="hidden" class="form-control" id="semestre" name="semestre" value="<?php echo $unsemestre->idtb_semestre?>" readonly >
                            <!--
                            </div>
                            -->
                            <div class="form-group col-md-6">
                                <label for="descripcion">Descripcion</label>
                                <input type="text" class="form-control" id="descripcion" name="descripcion" value="<?php echo $unsemestre->descripcion?>" >
                            </div>
                            <div class="form-group col-md-6">
                                <label for="tipolista">Tipo de semestre</label>
                                <select class="form-control" id="tipolista" name="tipolista">
                                    <?php foreach($tipos as $tipo): ?>
                                        <?php if($tipo->idtb_tipo == $unsemestre->idtb_tipo): ?>
                                            <option value="<?php echo $tipo->idtb_tipo ?>" selected><?php echo $tipo->descripcion; ?></option>
                                        <?php else: ?>
                                            <option value="<?php echo $tipo->idtb_tipo ?>" ><?php echo $tipo->descripcion; ?></option>
                                        <?php endif ?>
                                    <?php endforeach; ?>
                                </select>
                            </div>
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

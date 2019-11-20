

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
        Cargas
        <small>Nuevo</small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box box-solid">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-12">
                        
                        <form action="<?php echo base_url();?>controller/cargas/registrar" method="POST" class="form-horizontal">
                            
                            <div class="form-group">

                                <div class="col-md-6">
                                    <label for="">Semestre</label>
                                    <select name="semestre" id="semestre" class="form-control" required>
                                        <?php foreach ($todoslossemestres as $unsemestre): ?>
                                            <option value="<?php echo $unsemestre->id_semestre; ?>" ><?php echo $unsemestre->descripcion; ?></option>
                                        <?php endforeach; ?>
                                        <!--
                                        <option value="">Seleccione...</option>
                                        <option value="1">Boleta</option>
                                        <option value="2">Factura</option>
                                        -->
                                    </select>
                                    <!--
                                    <input type="hidden" id="idcomprobante" name="idcomprobante">
                                    <input type="hidden" id="igv">
                                    -->
                                </div>

                                <!--
                                <div class="col-md-4">
                                    <label for="semestrecolectivodata">Semestre</label>
                                    <br>
                                -->
                                    <!--<input list="semestrecolectivodata" name="semestreindividualdata">-->
                                    <!--<input list="semestrecolectivodata" value="" class="col-sm-6 custom-select custom-select-sm">-->
                                    <!--
                                    <input list="semestrecolectivodata" value="" name="semestreindividualdata" class="custom-select" required>
                                    -->
                                    <!--<datalist name="semestrecolectivodata" id="semestrecolectivodata" class="form-control" required>-->
                                    <!--
                                    <datalist name="semestrecolectivodata" id="semestrecolectivodata" required>
                                        <?php foreach ($todoslossemestres as $unsemestre): ?>
                                            <option value="<?php echo $unsemestre->descripcion; ?>" ><?php echo $unsemestre->descripcion; ?></option>
                                        <?php endforeach; ?>
                                        <!--
                                        <option value="Seleccione...">Seleccione...</option>
                                        <option value="Boleta">Boleta</option>
                                        <option value="Factura">Factura</option>
                                        -->
                                    <!--
                                    </datalist>
                                    -->
                                    <!--<input type="submit">-->
                                    <!--
                                    <input type="hidden" id="idcomprobante" name="idcomprobante">
                                    <input type="hidden" id="igv">
                                </div>
                                -->
                            
                            
                            
                                <!--
                                <div class="col-md-4">
                                    <label for="ciclocolectivodata">Ciclo</label>
                                    <br>
                                -->
                                    <!--<input list="semestrecolectivodata" name="semestreindividualdata">-->
                                    <!--<input list="semestrecolectivodata" value="" class="col-sm-6 custom-select custom-select-sm">-->
                                    <!--
                                    <input list="ciclocolectivodata" value="" class="custom-select">
                                    -->
                                    <!--<datalist name="semestrecolectivodata" id="semestrecolectivodata" class="form-control" required>-->
                                    <!--
                                    <datalist name="ciclocolectivodata" id="ciclocolectivodata" required>
                                    -->
                                        
                                        <?php /*foreach ($todoslosciclos as $unciclo): */ ?>
                                            <!--
                                            <option value="<?php /*echo $unciclo->idtb_ciclo */ ?>" ><?php /* echo $unciclo->descripcion; */ ?></option>
                                            -->
                                            <!--
                                            <option value="<?php echo $unciclo->descripcion; ?>" ><?php echo $unciclo->descripcion; ?></option>
                                            -->
                                        <?php /* endforeach; */ ?>
                                        <!--
                                        <option value="Seleccione...">Seleccione... aa</option>
                                        <option value="Boleta">Boleta aa</option>
                                        <option value="Factura">Factura aa</option>
                                        -->
                                    <!--
                                    </datalist>
                                    -->
                                    <!--<input type="submit">-->
                                    <!--
                                    <input type="hidden" id="idcomprobante" name="idcomprobante">
                                    <input type="hidden" id="igv">
                                </div>
                                -->
                                
                                
                                <!--
                                <div class="col-md-3">
                                    <label for="">Serie:</label>
                                    <input type="text" class="form-control" name="serie" readonly>
                                </div>
                                <div class="col-md-3">
                                    <label for="">Numero:</label>
                                    <input type="text" class="form-control" id="numero" name="numero" readonly>
                                </div>
                                -->
                            </div>
                                
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="">Docente</label>
                                    <div class="input-group">
                                        <input type="hidden" name="id_un_docente" id="id_un_docente">
                                        <input type="text" class="form-control" disabled="disabled" id="nombre_un_docente">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-default" ><span class="fa fa-search"></span> Buscar</button>
                                        </span>
                                    </div><!-- /input-group -->
                                </div>
                                <!--
                                <div class="col-md-3">
                                    <label for="">Fecha</label>
                                    <input type="date" class="form-control" name="fecha" required>
                                </div>
                                -->
                                <div class="col-md-3">
                                    <label for="seccion">Seccion</label>
                                    <select class="form-control" id="idseccion" name="idseccion">
                                        <?php foreach($todoslossecciones as $seccion): ?>
                                            <option value="<?php echo $seccion->id_seccion ?>" ><?php echo $seccion->descripcion; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            
                            
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="">Curso</label>
                                    <div class="input-group">
                                        <input type="hidden" name="id_un_curso" id="id_un_curso">
                                        <input type="text" class="form-control" disabled="disabled" id="nombre_un_curso">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-default-curso" ><span class="fa fa-search"></span> Buscar</button>
                                        </span>
                                    </div><!-- /input-group -->
                                </div>
                                <!--
                                <div class="col-md-3">
                                    <label for="">Fecha</label>
                                    <input type="date" class="form-control" name="fecha" required>
                                </div>
                                -->
                                <div class="col-md-3">
                                    <label for="turno">Turno</label>
                                    <select class="form-control" id="idturno" name="idturno">
                                        <?php foreach($todoslosturnos as $turno): ?>
                                            <option value="<?php echo $turno->id_turno ?>" ><?php echo $turno->descripcion; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            
                            <!--
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="">Curso</label>
                                    <input type="text" class="form-control" id="cursoaagregar">
                                </div>
                                <div class="col-md-2">
                                    <label for="">&nbsp;</label>
                                    <button id="btn-agregar" type="button" class="btn btn-success btn-flat btn-block"><span class="fa fa-plus"></span> Agregar</button>
                                </div>
                            </div>
                            -->


                            <div class="form-group">
                                <div class="col-md-6">
                                    <label for="">Dia</label>
                                    <input type="text" class="form-control" id="diaaagregar">
                                </div>
                                <div class="col-md-2">
                                    <label for="">&nbsp;</label>
                                    <button id="btn-agregar-dia" type="button" class="btn btn-success btn-flat btn-block"><span class="fa fa-plus"></span> Agregar</button>
                                </div>
                            </div>
                            
                            
                            
                            <table id="tbagregarcargas" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Dia</th>
                                        <th>Hora Inicio</th>
                                        <th>Hora Fin</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!--
                                    <tr>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                        <td>...</td>
                                    </tr>
                                    -->
                                </tbody>
                            </table>

                            <!--
                            <div class="form-group">
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">Subtotal:</span>
                                        <input type="text" class="form-control" placeholder="Username" name="subtotal" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">IGV:</span>
                                        <input type="text" class="form-control" placeholder="Username" name="igv" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">Descuento:</span>
                                        <input type="text" class="form-control" placeholder="Username" name="descuento" value="0.00" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">Total:</span>
                                        <input type="text" class="form-control" placeholder="Username" name="total" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                            -->
                            
                            <div class="form-group" style="text-align: center;">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-success btn-flat">Guardar</button>
                                </div>
                                
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



<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Lista de Docentes</h4>
            </div>
            <div class="modal-body">
                <table id="exampleDocente" class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Datos Completos</th>
                            <th>Opcion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($todoslosdocentes)): ?>
                            <?php foreach ($todoslosdocentes as $docente): ?>
                                <tr>
                                    <td><?php echo $docente->id_docente; ?></td>
                                    <td><?php echo $docente->docente; ?></td>
                                    <?php $datadocente = $docente->id_docente."*".$docente->docente; ?>
                                    <td>
                                        <button type="button" class="btn btn-success btn-check btn-check-docente" value="<?php echo $datadocente; ?>" ><span class="fa fa-check"></span></button>
                                        <!--
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-info btn-view" data-toggle="modal" data-target="#modal-default" value="<?php echo $docentes->idtb_docente;?>">
                                                <span class="fa fa-search"></span>
                                            </button>
                                            <a href="<?php echo base_url(); ?>controller/docentes/edit/<?php echo $docentes->idtb_docente;?>" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
                                            <a href="#" class="btn btn-danger"><span class="fa fa-remove"></span></a>
                                        </div>
                                        -->
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->







<div class="modal fade" id="modal-default-curso">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Lista de Cursos</h4>
            </div>
            <div class="modal-body">
                <table id="exampleCurso" class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Codigo</th>
                            <th>Descripcion</th>
                            <th>Creditos</th>
                            <th>Ciclo</th>
                            <th>Opcion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($todosloscursos)): ?>
                            <?php foreach ($todosloscursos as $curso): ?>
                                <tr>
                                    <td><?php echo $curso->id_curso; ?></td>
                                    <td><?php echo $curso->codigo; ?></td>
                                    <td><?php echo $curso->descripcion; ?></td>
                                    <td><?php echo $curso->creditos; ?></td>
                                    <td><?php echo $curso->ciclo; ?></td>
                                    <!--
                                    <td><?php echo $docente->apellido; ?></td>
                                    <td><?php echo $docente->tipousuario; ?></td>
                                    <td><?php echo $docente->tipodocente; ?></td>
                                    -->
                                    <?php $datacurso = $curso->id_curso."*".$curso->codigo."*".$curso->descripcion."*".$curso->creditos."*".$curso->ciclo; ?>
                                    <td>
                                        <button type="button" class="btn btn-success btn-check btn-check-curso" value="<?php echo $datacurso; ?>" ><span class="fa fa-check"></span></button>
                                        <!--
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-info btn-view" data-toggle="modal" data-target="#modal-default" value="<?php echo $docentes->idtb_docente;?>">
                                                <span class="fa fa-search"></span>
                                            </button>
                                            <a href="<?php echo base_url(); ?>controller/docentes/edit/<?php echo $docentes->idtb_docente;?>" class="btn btn-warning"><span class="fa fa-pencil"></span></a>
                                            <a href="#" class="btn btn-danger"><span class="fa fa-remove"></span></a>
                                        </div>
                                        -->
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

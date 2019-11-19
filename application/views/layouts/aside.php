<!-- =============================================== -->

<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">      
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>
            <li>
                <a href="../widgets.html">
                    <i class="fa fa-home"></i> <span>Inicio</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-cogs"></i> <span>Carga Lectiva</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?php echo base_url(); ?>controller/docentes"><i class="fa fa-circle-o"></i> Docentes</a></li>
                    <li><a href="<?php echo base_url(); ?>controller/cursos"><i class="fa fa-circle-o"></i> Cursos</a></li>
                    <li><a href="<?php echo base_url(); ?>controller/semestres"><i class="fa fa-circle-o"></i> Semestres</a></li>
                    <li><a href="<?php echo base_url(); ?>controller/cargas"><i class="fa fa-circle-o"></i> Cargas</a></li>
                    <li><a href="<?php echo base_url(); ?>controller/cargalectivapordocente"><i class="fa fa-circle-o"></i> Mi carga lectiva</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-share-alt"></i> <span>Carga no Lectiva</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?php echo base_url(); ?>controller/actividades"><i class="fa fa-circle-o"></i> Actividades</a></li>
                    <li><a href="<?php echo base_url(); ?>controller/asignar"><i class="fa fa-circle-o"></i> Asignar Carga no Lectiva</a></li>
<!--                    <li><a href="<?php echo base_url(); ?>controller/plantrabajo"><i class="fa fa-circle-o"></i> Plan de Trabajo</a></li>
                    <li><a href="<?php echo base_url(); ?>controller/seguimiento"><i class="fa fa-circle-o"></i> Seguimiento</a></li>-->
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-print"></i> <span>Reportes</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="../../index.html"><i class="fa fa-circle-o"></i> Categorias</a></li>
                    <li><a href="../../index.html"><i class="fa fa-circle-o"></i> Clientes</a></li>
                    <li><a href="../../index.html"><i class="fa fa-circle-o"></i> Productos</a></li>
                    <li><a href="../../index.html"><i class="fa fa-circle-o"></i> Ventas</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-user-circle-o"></i> <span>Administrador</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="../../index.html"><i class="fa fa-circle-o"></i> Tipo Documentos</a></li>
                    <li><a href="../../index.html"><i class="fa fa-circle-o"></i> Usuarios</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

<!-- =============================================== -->
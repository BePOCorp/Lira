
-- ----------------------------------------------------------------------------------
-- Tablas independientes
-- ----------------------------------------------------------------------------------

-- seccion
INSERT INTO `bd_cargaacademicalectiva`.`seccion` (`descripcion`) VALUES ('A');
INSERT INTO `bd_cargaacademicalectiva`.`seccion` (`descripcion`) VALUES ('B');
INSERT INTO `bd_cargaacademicalectiva`.`seccion` (`descripcion`) VALUES ('C');

-- turno
INSERT INTO `bd_cargaacademicalectiva`.`turno` (`codigo`, `descripcion`) VALUES ('M', 'Mañana');
INSERT INTO `bd_cargaacademicalectiva`.`turno` (`codigo`, `descripcion`) VALUES ('T', 'Tarde');
INSERT INTO `bd_cargaacademicalectiva`.`turno` (`codigo`, `descripcion`) VALUES ('N', 'Noche');

-- tipo
INSERT INTO `bd_cargaacademicalectiva`.`tipo` (`descripcion`) VALUES ('Impar');
INSERT INTO `bd_cargaacademicalectiva`.`tipo` (`descripcion`) VALUES ('Par');



-- tipo_docente
INSERT INTO `bd_cargaacademicalectiva`.`tipo_docente` (`descripcion`) VALUES ('Nombrado');
INSERT INTO `bd_cargaacademicalectiva`.`tipo_docente` (`descripcion`) VALUES ('Contratado');

-- tipo_usuario
INSERT INTO `bd_cargaacademicalectiva`.`tipo_usuario` (`descripcion`) VALUES ('Administrativo');
INSERT INTO `bd_cargaacademicalectiva`.`tipo_usuario` (`descripcion`) VALUES ('Docente');



-- dia
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Lunes');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Martes');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Miercoles');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Jueves');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Viernes');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Sabado');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Domingo');


-- actividad
INSERT INTO `bd_cargaacademicalectiva`.`actividad` (`descripcion`) VALUES ('Acreditacion');
INSERT INTO `bd_cargaacademicalectiva`.`actividad` (`descripcion`) VALUES ('Tutoria');
INSERT INTO `bd_cargaacademicalectiva`.`actividad` (`descripcion`) VALUES ('Preparacion de clase');



-- numero_semana
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Primera');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Segunda');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Tercera');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Cuarta');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Quina');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Sexta');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Setima');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Octava');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Novena');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decima');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Undecimo');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Duodecimo');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimotercero');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimocuarto');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimoquinto');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimosexto');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimosetimo');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimoctavo');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimonoveno');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Vigesimo');


-- menu
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Inicio', 'dashboard');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Docentes', 'mantenimiento/docentes');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Cursos', 'mantenimiento/cursos');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Semestres', 'mantenimiento/semestres');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('CargasLectivas', 'mantenimiento/cargas');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Actividades', 'mantenimiento/actividades');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('CargaNoLectiva', 'mantenimiento/asignar');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('PlanDeTrabajo', 'mantenimiento/plantrabajo');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Seguimiento', 'mantenimiento/seguimiento');


-- ----------------------------------------------------------------------------------
-- Tablas dependientes
-- ----------------------------------------------------------------------------------

-- ciclo
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Primer ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Segundo ciclo', '2');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Tercer ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Cuarto ciclo', '2');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Quinto ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Sexto ciclo', '2');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Setimo ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Octavo ciclo', '2');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Noveno ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`descripcion`, `id_tipo`) VALUES ('Decimo ciclo', '2');

-- semestre
INSERT INTO `bd_cargaacademicalectiva`.`semestre` (`descripcion`, `id_tipo`) VALUES ('2019-01', '1');
INSERT INTO `bd_cargaacademicalectiva`.`semestre` (`descripcion`, `id_tipo`) VALUES ('2019-02', '2');


-- curso
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('2A0125', 'Logica y algoritmos', '3', '4', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('3B0058', 'Algebra lineal', '2', '3', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('5A0060', 'Computacion e informatica basica', '4', '5', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('2C0187', 'Lenguaje y redaccion', '4', '5', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('6C0037', 'Metodologia de la investigacion', '3', '4', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0116', 'Introduccion a la ingenieria de sistemas', '2', '3', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('3B0103', 'Matematica basica', '5', '6', '1');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('3A0014', 'Fisica', '4', '5', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7C0080', 'Economia', '3', '4', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('3B0165', 'Calculo diferencial e integral', '5', '6', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0109', 'Algoritmo y estructura de datos', '4', '5', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7B0192', 'Contabilidad general', '3', '4', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7A0472', 'Administracion de negocios', '3', '4', '2');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8F0123', 'Electromagnetismo y ondas', '4', '5', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('5B0110', 'Estadistica y probabilidades', '4', '5', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('3B0166', 'Ecuaciones diferenciales', '4', '5', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8E0035', 'Lenguaje de programacion estructurado', '4', '5', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0073', 'Teoria de sistemas', '3', '4', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8E0039', 'Programacion lineal', '3', '4', '3');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8F0127', 'Sistemas digitales', '4', '5', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('5B0021', 'Estadistica inferencial', '4', '5', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('3B0170', 'Matematicas discretas', '4', '5', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8E0036', 'Lenguaje de programacion orientado a objetos', '4', '5', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('6C0006', 'Investigacion operativa', '3', '4', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7B0184', 'Costos y presupuestos', '3', '4', '4');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('5A0063', 'Fundamentos de base de datos', '4', '5', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8E0037', 'Lenguaje de programacion orientado a web', '3', '4', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8E0003', 'Sistemas operativos', '4', '5', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7B0197', 'Ingenieria de procesos de negocios', '4', '5', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('5A0015', 'Arquitectura del computador', '3', '4', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0110', 'Analisis y diseño de sistemas de informacion', '4', '5', '5');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('2H0033', 'Fundamentos de comunicaciones', '4', '5', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7C0081', 'Ingenieria economica', '3', '4', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0068', 'Sistemas de base de datos', '4', '5', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('2A0124', 'Filosofia y etica', '4', '5', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('2D0109', 'Sistemas de gestion del potencial humano', '3', '4', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0059', 'Ingenieria de software I', '4', '5', '6');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0111', 'Arquitectura y conectividad de redes', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7A0480', 'Marketing empresarial', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0085', 'Dinamica de sistemas', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7A0013', 'Administracion financiera', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0114', 'Ingenieria de Software II', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0071', 'Taller de base de datos', '4', '5', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('2I0230', 'Geopolitica y defensa nacional', '3', '4', '7');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0108', 'Administracion de redes', '4', '5', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('2I0229', 'Derecho informatico y empresarial', '3', '4', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0072', 'Taller de integracion de sistemas', '4', '5', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7A0482', 'Planeamiento estrategico de negocios', '4', '5', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0067', 'Simulacion de sistemas', '3', '4', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8F0126', 'Negocios electronicos', '4', '5', '8');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('GA0062', 'Practicas pre profesionales I', '6', '7', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('7A0477', 'Liderazgo y creatividad empresarial', '3', '4', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('5A0062', 'Formulacion y valuacion de proyectos informaticos', '4', '5', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0074', 'Topicos especiales en ingenieria de sistemas I', '3', '4', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8F0124', 'Inteligencia Artificial', '4', '5', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0118', 'Seguridad en redes y sistemas de informacion', '3', '4', '9');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('GA0063', 'Practicas pre profesionales II', '6', '7', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('HC0107', 'Seminario de tesis', '2', '3', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('BA0328', 'Gestion del conocimiento', '3', '4', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0112', 'Gerencia de proyectos de tecnologia de informacion y comunicaciones', '4', '5', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0121', 'Topicos especiales en ingenieria de sistemas II', '4', '5', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`codigo`, `descripcion`, `creditos`, `horas`, `id_ciclo`) VALUES ('8B0003', 'Auditoria de sistemas', '4', '5', '10');


-- usuario
INSERT INTO `bd_cargaacademicalectiva`.`usuario` (`nombre`, `apellido`, `usuario`, `clave`, `id_tipo_usuario`) VALUES ('Celso', 'Concha del Castillo', 'acelso', '123', '1');
INSERT INTO `bd_cargaacademicalectiva`.`usuario` (`nombre`, `apellido`, `usuario`, `clave`, `id_tipo_usuario`) VALUES ('Edgar Franklin', 'Espinoza Silverio', 'aedgar', '123', '1');

-- docente
INSERT INTO `bd_cargaacademicalectiva`.`usuario` (`nombre`, `apellido`, `usuario`, `clave`, `id_tipo_usuario`) VALUES ('Celso', 'Concha del Castillo', 'dcelso', '123', '2');
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`codigo`, `documento`, `id_tipo_docente`, `id_usuario`) VALUES ('2011001', '10203040', '1', '3');

INSERT INTO `bd_cargaacademicalectiva`.`usuario` (`nombre`, `apellido`, `usuario`, `clave`, `id_tipo_usuario`) VALUES ('Edgar Franklin', 'Espinoza Silverio', 'dedgar', '123', '2');
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`codigo`, `documento`, `id_tipo_docente`, `id_usuario`) VALUES ('2011002', '10203040', '2', '4');

INSERT INTO `bd_cargaacademicalectiva`.`usuario` (`nombre`, `apellido`, `usuario`, `clave`, `id_tipo_usuario`) VALUES ('Berta', 'Lopez Juarez', 'dberta', '123', '2');
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`codigo`, `documento`, `id_tipo_docente`, `id_usuario`) VALUES ('2011003', '10203040', '1', '5');

INSERT INTO `bd_cargaacademicalectiva`.`usuario` (`nombre`, `apellido`, `usuario`, `clave`, `id_tipo_usuario`) VALUES ('Carlos', 'Gallegos Coca', 'dcarlos', '123', '2');
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`codigo`, `documento`, `id_tipo_docente`, `id_usuario`) VALUES ('2011004', '10203040', '2', '6');

INSERT INTO `bd_cargaacademicalectiva`.`usuario` (`nombre`, `apellido`, `usuario`, `clave`, `id_tipo_usuario`) VALUES ('Jorge', 'Lira Camargo', 'djorge', '123', '2');
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`codigo`, `documento`, `id_tipo_docente`, `id_usuario`) VALUES ('2011005', '11223344', '1', '7');

INSERT INTO `bd_cargaacademicalectiva`.`usuario` (`nombre`, `apellido`, `usuario`, `clave`, `id_tipo_usuario`) VALUES ('Julio Teofilo', 'Azana Azana', 'djulio', '123', '2');
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`codigo`, `documento`, `id_tipo_docente`, `id_usuario`) VALUES ('2011006', '11223344', '2', '8');


-- permisos
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '1', '1');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '2', '1');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '3', '1');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '4', '1');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '5', '1');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '6', '1');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '7', '1');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '8', '1');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '9', '1');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '1', '2');
-- INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '2', '2');
-- INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '3', '2');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '4', '2');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '5', '2');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '6', '2');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '7', '2');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '8', '2');
INSERT INTO `bd_cargaacademicalectiva`.`permiso` (`create`, `read`, `update`, `delete`, `id_menu`, `id_tipo_usuario`) VALUES ('1', '1', '1', '1', '9', '2');






























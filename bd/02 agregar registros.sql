
-- ----------------------------------------------------------------------------------
-- Tablas independientes
-- ----------------------------------------------------------------------------------

-- 1
-- actividad
INSERT INTO `bd_cargaacademicalectiva`.`actividad` (`descripcion`) VALUES ('Acreditacion');
INSERT INTO `bd_cargaacademicalectiva`.`actividad` (`descripcion`) VALUES ('Tutoria');
INSERT INTO `bd_cargaacademicalectiva`.`actividad` (`descripcion`) VALUES ('Preparacion de clase');
-- INSERT INTO `bd_cargaacademicalectiva`.`actividad` (`descripcion`) VALUES ('DOTAP');
-- INSERT INTO `bd_cargaacademicalectiva`.`actividad` (`descripcion`) VALUES ('Investigacion');
-- INSERT INTO `bd_cargaacademicalectiva`.`actividad` (`descripcion`) VALUES ('Asesoria');

-- 2
-- dia
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Lunes');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Martes');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Miercoles');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Jueves');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Viernes');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Sabado');
INSERT INTO `bd_cargaacademicalectiva`.`dia` (`descripcion`) VALUES ('Domingo');

-- 3
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
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Undecima');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Duodecima');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimotercera');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimocuarta');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimoquinta');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimosexta');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimosetima');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimoctava');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Decimonovena');
INSERT INTO `bd_cargaacademicalectiva`.`numero_semana` (`descripcion`) VALUES ('Vigesima');

-- 4
-- seccion
INSERT INTO `bd_cargaacademicalectiva`.`seccion` (`nombre`, `descripcion`) VALUES ('A', 'A');
INSERT INTO `bd_cargaacademicalectiva`.`seccion` (`nombre`, `descripcion`) VALUES ('B', 'B');
INSERT INTO `bd_cargaacademicalectiva`.`seccion` (`nombre`, `descripcion`) VALUES ('C', 'C');

-- 5
-- tipo
INSERT INTO `bd_cargaacademicalectiva`.`tipo` (`descripcion`) VALUES ('Impar');
INSERT INTO `bd_cargaacademicalectiva`.`tipo` (`descripcion`) VALUES ('Par');

-- 6
-- tipo_docente
INSERT INTO `bd_cargaacademicalectiva`.`tipo_docente` (`descripcion`) VALUES ('Nombrado');
INSERT INTO `bd_cargaacademicalectiva`.`tipo_docente` (`descripcion`) VALUES ('Contratado');

-- 7
-- turno
INSERT INTO `bd_cargaacademicalectiva`.`turno` (`nombre`, `codigo`, `descripcion`) VALUES ('M', 'M', 'Mañana');
INSERT INTO `bd_cargaacademicalectiva`.`turno` (`nombre`, `codigo`, `descripcion`) VALUES ('T', 'T', 'Tarde');
INSERT INTO `bd_cargaacademicalectiva`.`turno` (`nombre`, `codigo`, `descripcion`) VALUES ('N', 'N', 'Noche');

-- menu
/*
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Inicio', 'dashboard');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Docentes', 'mantenimiento/docentes');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Cursos', 'mantenimiento/cursos');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Semestres', 'mantenimiento/semestres');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('CargasLectivas', 'mantenimiento/cargas');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Actividades', 'mantenimiento/actividades');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('CargaNoLectiva', 'mantenimiento/asignar');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('PlanDeTrabajo', 'mantenimiento/plantrabajo');
INSERT INTO `bd_cargaacademicalectiva`.`menu` (`nombre`, `url`) VALUES ('Seguimiento', 'mantenimiento/seguimiento');
*/

-- ----------------------------------------------------------------------------------
-- Tablas dependientes
-- ----------------------------------------------------------------------------------

-- 8
-- ciclo
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Primer ciclo', '1', 'Primer ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Segundo ciclo', '2', 'Segundo ciclo', '2');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Tercer ciclo', '1', 'Tercer ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Cuarto ciclo', '2', 'Cuarto ciclo', '2');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Quinto ciclo', '1', 'Quinto ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Sexto ciclo', '2', 'Sexto ciclo', '2');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Setimo ciclo', '1', 'Setimo ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Octavo ciclo', '2', 'Octavo ciclo', '2');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Noveno ciclo', '1', 'Noveno ciclo', '1');
INSERT INTO `bd_cargaacademicalectiva`.`ciclo` (`nombre`, `id_semestre`, `descripcion`, `id_tipo`) VALUES ('Decimo ciclo', '2', 'Decimo ciclo', '2');

-- 9
-- semestre
INSERT INTO `bd_cargaacademicalectiva`.`semestre` (`numero`, `descripcion`, `id_tipo`) VALUES ('1', '2019-01', '1');
INSERT INTO `bd_cargaacademicalectiva`.`semestre` (`numero`, `descripcion`, `id_tipo`) VALUES ('1', '2019-02', '2');

-- 10
-- curso
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Logica y algoritmos', '2A0125', 'Logica y algoritmos', '3', '4', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Algebra lineal', '3B0058', 'Algebra lineal', '2', '3', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Computacion e informatica basica', '5A0060', 'Computacion e informatica basica', '4', '5', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Lenguaje y redaccion', '2C0187', 'Lenguaje y redaccion', '4', '5', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Metodologia de la investigacion', '6C0037', 'Metodologia de la investigacion', '3', '4', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Introduccion a la ingenieria de sistemas', '8B0116', 'Introduccion a la ingenieria de sistemas', '2', '3', '1');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Matematica basica', '3B0103', 'Matematica basica', '5', '6', '1');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Fisica', '3A0014', 'Fisica', '4', '5', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Economia', '7C0080', 'Economia', '3', '4', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Calculo diferencial e integral', '3B0165', 'Calculo diferencial e integral', '5', '6', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Algoritmo y estructura de datos', '8B0109', 'Algoritmo y estructura de datos', '4', '5', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Contabilidad general', '7B0192', 'Contabilidad general', '3', '4', '2');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Administracion de negocios', '7A0472', 'Administracion de negocios', '3', '4', '2');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Electromagnetismo y ondas', '8F0123', 'Electromagnetismo y ondas', '4', '5', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Estadistica y probabilidades', '5B0110', 'Estadistica y probabilidades', '4', '5', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Ecuaciones diferenciales', '3B0166', 'Ecuaciones diferenciales', '4', '5', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Lenguaje de programacion estructurado', '8E0035', 'Lenguaje de programacion estructurado', '4', '5', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Teoria de sistemas', '8B0073', 'Teoria de sistemas', '3', '4', '3');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Programacion lineal', '8E0039', 'Programacion lineal', '3', '4', '3');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Sistemas digitales', '8F0127', 'Sistemas digitales', '4', '5', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Estadistica inferencial', '5B0021', 'Estadistica inferencial', '4', '5', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Matematicas discretas', '3B0170', 'Matematicas discretas', '4', '5', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Lenguaje de programacion orientado a objetos', '8E0036', 'Lenguaje de programacion orientado a objetos', '4', '5', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Investigacion operativa', '6C0006', 'Investigacion operativa', '3', '4', '4');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Costos y presupuestos', '7B0184', 'Costos y presupuestos', '3', '4', '4');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Fundamentos de base de datos', '5A0063', 'Fundamentos de base de datos', '4', '5', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Lenguaje de programacion orientado a web', '8E0037', 'Lenguaje de programacion orientado a web', '3', '4', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Sistemas operativos', '8E0003', 'Sistemas operativos', '4', '5', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Ingenieria de procesos de negocios', '7B0197', 'Ingenieria de procesos de negocios', '4', '5', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Arquitectura del computador', '5A0015', 'Arquitectura del computador', '3', '4', '5');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Analisis y diseño de sistemas de informacion', '8B0110', 'Analisis y diseño de sistemas de informacion', '4', '5', '5');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Fundamentos de comunicaciones', '2H0033', 'Fundamentos de comunicaciones', '4', '5', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Ingenieria economica', '7C0081', 'Ingenieria economica', '3', '4', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Sistemas de base de datos', '8B0068', 'Sistemas de base de datos', '4', '5', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Filosofia y etica', '2A0124', 'Filosofia y etica', '4', '5', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Sistemas de gestion del potencial humano', '2D0109', 'Sistemas de gestion del potencial humano', '3', '4', '6');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Ingenieria de software I', '8B0059', 'Ingenieria de software I', '4', '5', '6');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Arquitectura y conectividad de redes', '8B0111', 'Arquitectura y conectividad de redes', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Marketing empresarial', '7A0480', 'Marketing empresarial', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Dinamica de sistemas', '8B0085', 'Dinamica de sistemas', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Administracion financiera', '7A0013', 'Administracion financiera', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Ingenieria de Software II', '8B0114', 'Ingenieria de Software II', '3', '4', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Taller de base de datos', '8B0071', 'Taller de base de datos', '4', '5', '7');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Geopolitica y defensa nacional', '2I0230', 'Geopolitica y defensa nacional', '3', '4', '7');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Administracion de redes', '8B0108', 'Administracion de redes', '4', '5', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Derecho informatico y empresarial', '2I0229', 'Derecho informatico y empresarial', '3', '4', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Taller de integracion de sistemas', '8B0072', 'Taller de integracion de sistemas', '4', '5', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Planeamiento estrategico de negocios', '7A0482', 'Planeamiento estrategico de negocios', '4', '5', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Simulacion de sistemas', '8B0067', 'Simulacion de sistemas', '3', '4', '8');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Negocios electronicos', '8F0126', 'Negocios electronicos', '4', '5', '8');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Practicas pre profesionales I', 'GA0062', 'Practicas pre profesionales I', '6', '7', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Liderazgo y creatividad empresarial', '7A0477', 'Liderazgo y creatividad empresarial', '3', '4', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Formulacion y valuacion de proyectos informaticos', '5A0062', 'Formulacion y valuacion de proyectos informaticos', '4', '5', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Topicos especiales en ingenieria de sistemas I', '8B0074', 'Topicos especiales en ingenieria de sistemas I', '3', '4', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Inteligencia Artificial', '8F0124', 'Inteligencia Artificial', '4', '5', '9');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Seguridad en redes y sistemas de informacion', '8B0118', 'Seguridad en redes y sistemas de informacion', '3', '4', '9');

INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Practicas pre profesionales II', 'GA0063', 'Practicas pre profesionales II', '6', '7', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Seminario de tesis', 'HC0107', 'Seminario de tesis', '2', '3', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Gestion del conocimiento', 'BA0328', 'Gestion del conocimiento', '3', '4', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Gerencia de proyectos de tecnologia de informacion y comunicaciones', '8B0112', 'Gerencia de proyectos de tecnologia de informacion y comunicaciones', '4', '5', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Topicos especiales en ingenieria de sistemas II', '8B0121', 'Topicos especiales en ingenieria de sistemas II', '4', '5', '10');
INSERT INTO `bd_cargaacademicalectiva`.`curso` (`nombre`, `codigo`, `descripcion`, `creditos`, `id_periodo`, `id_ciclo`) VALUES ('Auditoria de sistemas', '8B0003', 'Auditoria de sistemas', '4', '5', '10');

-- 11
-- docente
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`apellido_paterno`, `apellido_materno`, `nombres`, `telefono`, `id_direccion`, `correo`, `jefe_departamento`, `id_postulante`, `id_tipo_docente`, `usuario`, `clave`, `estado`, `dni`) VALUES ('Azaña', 'Azaña', 'Julio Teofilo', '987123456', '1', 'julio.azana@unfv.edu.pe', '1', '1', '1', 'd.julio.azana', '123', '1', '12345678');
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`apellido_paterno`, `apellido_materno`, `nombres`, `telefono`, `id_direccion`, `correo`, `jefe_departamento`, `id_postulante`, `id_tipo_docente`, `usuario`, `clave`, `estado`, `dni`) VALUES ('Vales', 'Carrillo', 'Jorge Alberto', '987123456', '1', 'jorge.vales@unfv.edu.pe', '1', '1', '1', 'd.jorge.vales', '123', '1', '12345678');
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`apellido_paterno`, `apellido_materno`, `nombres`, `telefono`, `id_direccion`, `correo`, `jefe_departamento`, `id_postulante`, `id_tipo_docente`, `usuario`, `clave`, `estado`, `dni`) VALUES ('Lira', 'Camargo', 'Jorge', '987123456', '1', 'jorge.lira@unfv.edu.pe', '1', '1', '1', 'd.jorge.lira', '123', '1', '12345678');
INSERT INTO `bd_cargaacademicalectiva`.`docente` (`apellido_paterno`, `apellido_materno`, `nombres`, `telefono`, `id_direccion`, `correo`, `jefe_departamento`, `id_postulante`, `id_tipo_docente`, `usuario`, `clave`, `estado`, `dni`) VALUES ('Espinoza', 'Silverio', 'Edgard Franklin', '987123456', '1', 'edgard.espinoza@unfv.edu.pe', '1', '1', '1', 'd.edgard.espinoza', '123', '1', '12345678');

-- 12
-- carga
INSERT INTO `bd_cargaacademicalectiva`.`carga` (`id_seccion`, `id_turno`, `id_curso`, `id_semestre`, `id_docente`) VALUES ('1', '1', '1', '1', '1');
INSERT INTO `bd_cargaacademicalectiva`.`carga` (`id_seccion`, `id_turno`, `id_curso`, `id_semestre`, `id_docente`) VALUES ('1', '2', '1', '1', '2');
INSERT INTO `bd_cargaacademicalectiva`.`carga` (`id_seccion`, `id_turno`, `id_curso`, `id_semestre`, `id_docente`) VALUES ('1', '3', '1', '1', '3');
INSERT INTO `bd_cargaacademicalectiva`.`carga` (`id_seccion`, `id_turno`, `id_curso`, `id_semestre`, `id_docente`) VALUES ('2', '1', '1', '1', '4');
INSERT INTO `bd_cargaacademicalectiva`.`carga` (`id_seccion`, `id_turno`, `id_curso`, `id_semestre`, `id_docente`) VALUES ('2', '2', '1', '1', '1');
INSERT INTO `bd_cargaacademicalectiva`.`carga` (`id_seccion`, `id_turno`, `id_curso`, `id_semestre`, `id_docente`) VALUES ('2', '3', '1', '1', '2');
INSERT INTO `bd_cargaacademicalectiva`.`carga` (`id_seccion`, `id_turno`, `id_curso`, `id_semestre`, `id_docente`) VALUES ('3', '1', '1', '1', '3');
INSERT INTO `bd_cargaacademicalectiva`.`carga` (`id_seccion`, `id_turno`, `id_curso`, `id_semestre`, `id_docente`) VALUES ('3', '2', '1', '1', '4');
INSERT INTO `bd_cargaacademicalectiva`.`carga` (`id_seccion`, `id_turno`, `id_curso`, `id_semestre`, `id_docente`) VALUES ('3', '3', '1', '1', '1');

-- 13
-- horario
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '1', '1');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '2', '2');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '3', '3');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '4', '4');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '5', '1');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '6', '2');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '1', '3');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '2', '4');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '3', '1');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '4', '2');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '5', '3');
INSERT INTO `bd_cargaacademicalectiva`.`horario` (`hora_inicio`, `hora_final`, `id_dia`, `id_carga`) VALUES ('18:00', '19:40', '6', '4');

-- 14
-- carga_no_lectiva
INSERT INTO `bd_cargaacademicalectiva`.`carga_no_lectiva` (`horas`, `id_docente`, `id_actividad`) VALUES ('4', '1', '1');
INSERT INTO `bd_cargaacademicalectiva`.`carga_no_lectiva` (`horas`, `id_docente`, `id_actividad`) VALUES ('4', '2', '2');
INSERT INTO `bd_cargaacademicalectiva`.`carga_no_lectiva` (`horas`, `id_docente`, `id_actividad`) VALUES ('4', '3', '3');
INSERT INTO `bd_cargaacademicalectiva`.`carga_no_lectiva` (`horas`, `id_docente`, `id_actividad`) VALUES ('4', '1', '1');
INSERT INTO `bd_cargaacademicalectiva`.`carga_no_lectiva` (`horas`, `id_docente`, `id_actividad`) VALUES ('4', '2', '2');
INSERT INTO `bd_cargaacademicalectiva`.`carga_no_lectiva` (`horas`, `id_docente`, `id_actividad`) VALUES ('4', '3', '3');

-- 15
-- plan_de_trabajo
INSERT INTO `bd_cargaacademicalectiva`.`plan_de_trabajo` (`descripcion`, `id_carga_no_lectiva`, `id_numero_semana`, `cumplimiento`) VALUES ('Descripcion 1', '1', '1', 'Cumplimiento 1');
INSERT INTO `bd_cargaacademicalectiva`.`plan_de_trabajo` (`descripcion`, `id_carga_no_lectiva`, `id_numero_semana`, `cumplimiento`) VALUES ('Descripcion 2', '1', '1', 'Cumplimiento 2');
INSERT INTO `bd_cargaacademicalectiva`.`plan_de_trabajo` (`descripcion`, `id_carga_no_lectiva`, `id_numero_semana`, `cumplimiento`) VALUES ('Descripcion 3', '1', '1', 'Cumplimiento 3');
INSERT INTO `bd_cargaacademicalectiva`.`plan_de_trabajo` (`descripcion`, `id_carga_no_lectiva`, `id_numero_semana`, `cumplimiento`) VALUES ('Descripcion 4', '1', '1', 'Cumplimiento 4');
INSERT INTO `bd_cargaacademicalectiva`.`plan_de_trabajo` (`descripcion`, `id_carga_no_lectiva`, `id_numero_semana`, `cumplimiento`) VALUES ('Descripcion 5', '1', '1', 'Cumplimiento 5');
INSERT INTO `bd_cargaacademicalectiva`.`plan_de_trabajo` (`descripcion`, `id_carga_no_lectiva`, `id_numero_semana`, `cumplimiento`) VALUES ('Descripcion 6', '1', '1', 'Cumplimiento 6');
INSERT INTO `bd_cargaacademicalectiva`.`plan_de_trabajo` (`descripcion`, `id_carga_no_lectiva`, `id_numero_semana`, `cumplimiento`) VALUES ('Descripcion 7', '1', '1', 'Cumplimiento 7');
INSERT INTO `bd_cargaacademicalectiva`.`plan_de_trabajo` (`descripcion`, `id_carga_no_lectiva`, `id_numero_semana`, `cumplimiento`) VALUES ('Descripcion 8', '1', '1', 'Cumplimiento 8');
INSERT INTO `bd_cargaacademicalectiva`.`plan_de_trabajo` (`descripcion`, `id_carga_no_lectiva`, `id_numero_semana`, `cumplimiento`) VALUES ('Descripcion 9', '1', '1', 'Cumplimiento 9');











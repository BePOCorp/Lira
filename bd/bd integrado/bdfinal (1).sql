-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2019 a las 05:27:27
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdfinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo`
--

CREATE TABLE `administrativo` (
  `id` int(11) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(9) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `id_postulante` int(11) NOT NULL,
  `id_biblioteca` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `dni` int(8) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `telefono` int(9) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `id_sexo` int(11) NOT NULL,
  `id_colegio` int(11) NOT NULL,
  `anio_egresado` year(4) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_predio` int(11) NOT NULL,
  `id_modalidad` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_nacionalidad` int(11) NOT NULL,
  `id_postulante` int(11) NOT NULL,
  `id_escuela` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `jornada` varchar(50) NOT NULL,
  `experiencia` text NOT NULL,
  `descripcion` text NOT NULL,
  `cantidad_postulantes` int(3) NOT NULL,
  `cantidad_final` int(3) NOT NULL,
  `fecha_inicial` date NOT NULL,
  `fecha_final` date NOT NULL,
  `salario` int(11) NOT NULL,
  `id_escuela` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio_persona`
--

CREATE TABLE `anuncio_persona` (
  `id_postulante` int(11) NOT NULL,
  `id_anuncio` int(11) NOT NULL,
  `calificacion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_carrera`
--

CREATE TABLE `area_carrera` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor`
--

CREATE TABLE `asesor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dni` int(8) NOT NULL,
  `celular` int(9) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `profesion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `id` int(11) NOT NULL,
  `id_curso_docente` int(11) NOT NULL,
  `id_seccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_horario`
--

CREATE TABLE `asignacion_horario` (
  `id_asignacion` int(11) NOT NULL,
  `id_horario_docente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_escuela` int(11) NOT NULL,
  `id_ciclo` int(11) NOT NULL,
  `id_malla` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_turno_seccion`
--

CREATE TABLE `asignatura_turno_seccion` (
  `id` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id_seccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_alumno`
--

CREATE TABLE `asistencia_alumno` (
  `id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores_libros`
--

CREATE TABLE `autores_libros` (
  `id_autor` int(11) NOT NULL,
  `id_libros` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bibliotecario`
--

CREATE TABLE `bibliotecario` (
  `id` int(11) NOT NULL,
  `id_postulante` int(11) NOT NULL,
  `id_biblioteca` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `id_conductor` int(11) NOT NULL,
  `id_ruta` int(11) NOT NULL,
  `matricula` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `numero_asientos` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga`
--

CREATE TABLE `carga` (
  `id` int(11) NOT NULL,
  `id_seccion` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `horas` char(2) NOT NULL,
  `remuneracion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_biblioteca`
--

CREATE TABLE `categorias_biblioteca` (
  `id_biblioteca` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ccd`
--

CREATE TABLE `ccd` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `dni` int(8) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclo`
--

CREATE TABLE `ciclo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `id` int(11) NOT NULL,
  `id_matricula` int(11) NOT NULL,
  `id_asistencia_alumno` int(11) NOT NULL,
  `id_horario_clase` int(11) NOT NULL,
  `fecha_clase` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase_plaza`
--

CREATE TABLE `clase_plaza` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_tipo_plaza` int(11) NOT NULL,
  `id_carga_academica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio`
--

CREATE TABLE `colegio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_tipo_colegio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(9) NOT NULL,
  `licencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `id` int(11) NOT NULL,
  `semana` varchar(50) NOT NULL,
  `inicio_semana` date NOT NULL,
  `fin_semana` date NOT NULL,
  `contenido_conceptuales` text NOT NULL,
  `contenido_procedimentales` text NOT NULL,
  `criterios_evaluacion` text NOT NULL,
  `horas_semanales` int(11) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `creditos` varchar(50) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `id_ciclo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_docente`
--

CREATE TABLE `curso_docente` (
  `id` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `estado_nota` int(11) NOT NULL,
  `archivo_nota` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `titulo_libro` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `fecha_prestamo` datetime NOT NULL,
  `dia_actual` datetime NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `dias_devolucion` int(7) NOT NULL,
  `dias_restantes` int(7) NOT NULL,
  `estado_prestamo_alumno` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia`
--

CREATE TABLE `dia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `id` int(11) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` int(11) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `telefono` int(9) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `jefe_departamento` varchar(50) NOT NULL,
  `id_postulante` int(11) NOT NULL,
  `id_tipo_docente` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL,
  `dni` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `id_tipo_documento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresado`
--

CREATE TABLE `egresado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(9) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `fecha_egreso` date NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `id_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `ruc` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `pagina_web` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE `escuela` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_facultad` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_area_carrera` int(11) NOT NULL,
  `id_facultad` int(11) NOT NULL,
  `total_vacantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eva_ccd_postulante`
--

CREATE TABLE `eva_ccd_postulante` (
  `id` int(11) NOT NULL,
  `id_ccd` int(11) NOT NULL,
  `id_postulante` int(11) NOT NULL,
  `item1_cv` char(1) NOT NULL,
  `item2_cv` char(1) NOT NULL,
  `item3_cv` char(1) NOT NULL,
  `item4_cv` char(1) NOT NULL,
  `item5_cv` char(1) NOT NULL,
  `item6_cv` char(1) NOT NULL,
  `item7_experiencia_profesional` char(2) NOT NULL,
  `item8_experiencia_docente` char(2) NOT NULL,
  `item9_clase_magistrado` char(2) NOT NULL,
  `puntaje_total` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_docencia`
--

CREATE TABLE `experiencia_docencia` (
  `id` int(11) NOT NULL,
  `tiempo` date NOT NULL,
  `descripcion` text NOT NULL,
  `id_postulante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_profesional`
--

CREATE TABLE `experiencia_profesional` (
  `id` int(11) NOT NULL,
  `tiempo` date NOT NULL,
  `descripcion` text NOT NULL,
  `id_postulante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_predio` int(11) NOT NULL,
  `id_area_carrera` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id` int(11) NOT NULL,
  `hora_inicio` varchar(50) NOT NULL,
  `hora_final` varchar(50) NOT NULL,
  `id_dia` int(11) NOT NULL,
  `id_carga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `inicio` varchar(50) NOT NULL,
  `fin` varchar(50) NOT NULL,
  `disponibles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_bus`
--

CREATE TABLE `horario_bus` (
  `id` int(11) NOT NULL,
  `horario_salida` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_docente`
--

CREATE TABLE `horario_docente` (
  `id` int(11) NOT NULL,
  `dia` varchar(50) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `aula` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE `idiomas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `id_postulante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `investigaciones`
--

CREATE TABLE `investigaciones` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_postulante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `editor` varchar(50) NOT NULL,
  `id_paises` int(11) NOT NULL,
  `isbn` bigint(13) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_facultad_biblioteca`
--

CREATE TABLE `libro_facultad_biblioteca` (
  `id` int(11) NOT NULL,
  `id_biblioteca` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `malla`
--

CREATE TABLE `malla` (
  `id` int(11) NOT NULL,
  `anio` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_asginacion` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `id_matricula` int(11) NOT NULL,
  `p1` double(7,2) NOT NULL,
  `p2` double(7,2) NOT NULL,
  `p3` double(7,2) NOT NULL,
  `pp` double(7,2) NOT NULL,
  `ep` double(7,2) NOT NULL,
  `ef` double(7,2) NOT NULL,
  `sustitutorio` double(7,2) NOT NULL,
  `aplazado` double(7,2) NOT NULL,
  `promedio` double(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otras_participaciones`
--

CREATE TABLE `otras_participaciones` (
  `id` int(11) NOT NULL,
  `tiempo` varchar(50) NOT NULL,
  `detalle` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `id_postulante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `monto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paraderos`
--

CREATE TABLE `paraderos` (
  `id` int(11) NOT NULL,
  `id_ruta` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_distrito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patios`
--

CREATE TABLE `patios` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `id_facultad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_profesional`
--

CREATE TABLE `perfil_profesional` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `experiencia` text NOT NULL,
  `formacion` text NOT NULL,
  `conocimiento` text NOT NULL,
  `id_postulante` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plaza`
--

CREATE TABLE `plaza` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `perfil_postulante` varchar(50) NOT NULL,
  `id_clase_plaza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plaza_asignatura`
--

CREATE TABLE `plaza_asignatura` (
  `id` int(11) NOT NULL,
  `id_plaza` int(11) NOT NULL,
  `id_asignatura_turno_seccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulante`
--

CREATE TABLE `postulante` (
  `id` int(11) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(9) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `id_direccion` int(11) NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `id_colegio` int(11) NOT NULL,
  `anio_egresado` year(4) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `id_predio` int(11) NOT NULL,
  `id_modalidad` int(11) NOT NULL,
  `id_facultad` int(11) NOT NULL,
  `id_plaza` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `id_estado_civil` int(11) NOT NULL,
  `id_sexo` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `id_nacionalidad` int(11) NOT NULL,
  `estado` char(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `cv` varchar(50) NOT NULL,
  `ruta` varchar(50) NOT NULL,
  `verificacion_cv` varchar(2) NOT NULL,
  `id_documento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predio`
--

CREATE TABLE `predio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo_alumno`
--

CREATE TABLE `prestamo_alumno` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_libros` int(11) NOT NULL,
  `fecha_prestamo` datetime NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pretamo_docente`
--

CREATE TABLE `pretamo_docente` (
  `id` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_libros` int(11) NOT NULL,
  `fecha_prestamo` datetime NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representante_empresa`
--

CREATE TABLE `representante_empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(9) NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `dia` varchar(50) NOT NULL,
  `mes` varchar(50) NOT NULL,
  `hora_reserva` varchar(50) NOT NULL,
  `hora_atencion` varchar(50) NOT NULL,
  `id_comida` int(11) NOT NULL,
  `id_horarios` int(11) NOT NULL,
  `id_atencion` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `id_postulante` int(11) NOT NULL,
  `puntaje` double NOT NULL,
  `condicion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `paradero_inicial` varchar(50) NOT NULL,
  `paradero_final` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldo_alumno`
--

CREATE TABLE `saldo_alumno` (
  `id_alumno` int(11) NOT NULL,
  `saldo` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `silabus`
--

CREATE TABLE `silabus` (
  `id` int(11) NOT NULL,
  `id_curso_docente` int(11) NOT NULL,
  `id_estado_silabus` int(11) NOT NULL,
  `archivo_pdf` varchar(200) NOT NULL,
  `referencia_electronica` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `silabus_estado`
--

CREATE TABLE `silabus_estado` (
  `id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `silabus_unidad`
--

CREATE TABLE `silabus_unidad` (
  `id_silabus` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `id` int(11) NOT NULL,
  `id_egresado` int(11) NOT NULL,
  `id_tipo_solicitud` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fecha_solicitud` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tics`
--

CREATE TABLE `tics` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tics_postulante`
--

CREATE TABLE `tics_postulante` (
  `id_tics` int(11) NOT NULL,
  `id_postulante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_atencion`
--

CREATE TABLE `tipo_atencion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_colegio`
--

CREATE TABLE `tipo_colegio` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comida`
--

CREATE TABLE `tipo_comida` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_docente`
--

CREATE TABLE `tipo_docente` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_plaza`
--

CREATE TABLE `tipo_plaza` (
  `id` int(11) NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_solicitud`
--

CREATE TABLE `tipo_solicitud` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulos_profesionales`
--

CREATE TABLE `titulos_profesionales` (
  `id` int(11) NOT NULL,
  `detalle` varchar(50) NOT NULL,
  `id_postulante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `texto` varchar(200) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `referencia_bibliografica` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_contenido`
--

CREATE TABLE `unidad_contenido` (
  `id_unidad` int(11) NOT NULL,
  `id_contenido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `id_postulante` (`id_postulante`),
  ADD KEY `id_biblioteca` (`id_biblioteca`),
  ADD KEY `id_direccion` (`id_direccion`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `id_direccion` (`id_direccion`),
  ADD KEY `id_sexo` (`id_sexo`),
  ADD KEY `id_colegio` (`id_colegio`),
  ADD KEY `id_predio` (`id_predio`),
  ADD KEY `id_modalidad` (`id_modalidad`),
  ADD KEY `id_nacionalidad` (`id_nacionalidad`),
  ADD KEY `id_postulante` (`id_postulante`),
  ADD KEY `id_escuela` (`id_escuela`);

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_escuela` (`id_escuela`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_distrito` (`id_distrito`);

--
-- Indices de la tabla `anuncio_persona`
--
ALTER TABLE `anuncio_persona`
  ADD PRIMARY KEY (`id_postulante`),
  ADD KEY `id_anuncio` (`id_anuncio`);

--
-- Indices de la tabla `area_carrera`
--
ALTER TABLE `area_carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asesor`
--
ALTER TABLE `asesor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_curso_docente` (`id_curso_docente`),
  ADD KEY `id_seccion` (`id_seccion`);

--
-- Indices de la tabla `asignacion_horario`
--
ALTER TABLE `asignacion_horario`
  ADD PRIMARY KEY (`id_asignacion`,`id_horario_docente`),
  ADD KEY `id_horario_docente` (`id_horario_docente`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ciclo` (`id_ciclo`),
  ADD KEY `id_escuela` (`id_escuela`),
  ADD KEY `id_malla` (`id_malla`);

--
-- Indices de la tabla `asignatura_turno_seccion`
--
ALTER TABLE `asignatura_turno_seccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_asignatura` (`id_asignatura`),
  ADD KEY `id_seccion` (`id_seccion`),
  ADD KEY `id_turno` (`id_turno`);

--
-- Indices de la tabla `asistencia_alumno`
--
ALTER TABLE `asistencia_alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autores_libros`
--
ALTER TABLE `autores_libros`
  ADD PRIMARY KEY (`id_autor`,`id_libros`),
  ADD KEY `id_libros` (`id_libros`);

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bibliotecario`
--
ALTER TABLE `bibliotecario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postulante` (`id_postulante`),
  ADD KEY `id_biblioteca` (`id_biblioteca`);

--
-- Indices de la tabla `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_conductor` (`id_conductor`),
  ADD KEY `id_horario` (`id_horario`),
  ADD KEY `id_ruta` (`id_ruta`);

--
-- Indices de la tabla `carga`
--
ALTER TABLE `carga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_seccion` (`id_seccion`),
  ADD KEY `id_turno` (`id_turno`),
  ADD KEY `id_curso` (`id_curso`),
  ADD KEY `id_semestre` (`id_semestre`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias_biblioteca`
--
ALTER TABLE `categorias_biblioteca`
  ADD PRIMARY KEY (`id_biblioteca`,`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `ccd`
--
ALTER TABLE `ccd`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `ciclo`
--
ALTER TABLE `ciclo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_semestre` (`id_semestre`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_matricula` (`id_matricula`),
  ADD KEY `id_asistencia_alumno` (`id_asistencia_alumno`),
  ADD KEY `id_horario_clase` (`id_horario_clase`);

--
-- Indices de la tabla `clase_plaza`
--
ALTER TABLE `clase_plaza`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_plaza` (`id_tipo_plaza`),
  ADD KEY `id_carga_academica` (`id_carga_academica`);

--
-- Indices de la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_colegio` (`id_tipo_colegio`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_periodo` (`id_periodo`),
  ADD KEY `id_ciclo` (`id_ciclo`);

--
-- Indices de la tabla `curso_docente`
--
ALTER TABLE `curso_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_distrito` (`id_distrito`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `id_direccion` (`id_direccion`),
  ADD KEY `id_postulante` (`id_postulante`),
  ADD KEY `id_tipo_docente` (`id_tipo_docente`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `egresado`
--
ALTER TABLE `egresado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `id_carrera` (`id_carrera`),
  ADD KEY `id_pago` (`id_pago`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_facultad` (`id_facultad`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_area_carrera` (`id_area_carrera`),
  ADD KEY `id_facultad` (`id_facultad`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eva_ccd_postulante`
--
ALTER TABLE `eva_ccd_postulante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ccd` (`id_ccd`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `experiencia_docencia`
--
ALTER TABLE `experiencia_docencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `experiencia_profesional`
--
ALTER TABLE `experiencia_profesional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_predio` (`id_predio`),
  ADD KEY `id_area_carrera` (`id_area_carrera`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dia` (`id_dia`),
  ADD KEY `id_carga` (`id_carga`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horario_bus`
--
ALTER TABLE `horario_bus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horario_docente`
--
ALTER TABLE `horario_docente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `investigaciones`
--
ALTER TABLE `investigaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paises` (`id_paises`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `libro_facultad_biblioteca`
--
ALTER TABLE `libro_facultad_biblioteca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_biblioteca` (`id_biblioteca`);

--
-- Indices de la tabla `malla`
--
ALTER TABLE `malla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alumno` (`id_alumno`),
  ADD KEY `id_asginacion` (`id_asginacion`),
  ADD KEY `id_periodo` (`id_periodo`);

--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_matricula` (`id_matricula`);

--
-- Indices de la tabla `otras_participaciones`
--
ALTER TABLE `otras_participaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paraderos`
--
ALTER TABLE `paraderos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ruta` (`id_ruta`),
  ADD KEY `id_distrito` (`id_distrito`);

--
-- Indices de la tabla `patios`
--
ALTER TABLE `patios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_facultad` (`id_facultad`);

--
-- Indices de la tabla `perfil_profesional`
--
ALTER TABLE `perfil_profesional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plaza`
--
ALTER TABLE `plaza`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_clase_plaza` (`id_clase_plaza`);

--
-- Indices de la tabla `plaza_asignatura`
--
ALTER TABLE `plaza_asignatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_asignatura_turno_seccion` (`id_asignatura_turno_seccion`),
  ADD KEY `id_plaza` (`id_plaza`);

--
-- Indices de la tabla `postulante`
--
ALTER TABLE `postulante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `id_direccion` (`id_direccion`),
  ADD KEY `id_especialidad` (`id_especialidad`),
  ADD KEY `id_colegio` (`id_colegio`),
  ADD KEY `id_predio` (`id_predio`),
  ADD KEY `id_modalidad` (`id_modalidad`),
  ADD KEY `id_facultad` (`id_facultad`),
  ADD KEY `id_plaza` (`id_plaza`),
  ADD KEY `id_periodo` (`id_periodo`),
  ADD KEY `id_estado_civil` (`id_estado_civil`),
  ADD KEY `id_sexo` (`id_sexo`),
  ADD KEY `id_nacionalidad` (`id_nacionalidad`);

--
-- Indices de la tabla `predio`
--
ALTER TABLE `predio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamo_alumno`
--
ALTER TABLE `prestamo_alumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alumno` (`id_alumno`),
  ADD KEY `id_libros` (`id_libros`);

--
-- Indices de la tabla `pretamo_docente`
--
ALTER TABLE `pretamo_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_libros` (`id_libros`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `representante_empresa`
--
ALTER TABLE `representante_empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_comida` (`id_comida`),
  ADD KEY `id_horarios` (`id_horarios`),
  ADD KEY `id_atencion` (`id_atencion`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `saldo_alumno`
--
ALTER TABLE `saldo_alumno`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `silabus`
--
ALTER TABLE `silabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_curso_docente` (`id_curso_docente`),
  ADD KEY `id_estado_silabus` (`id_estado_silabus`);

--
-- Indices de la tabla `silabus_estado`
--
ALTER TABLE `silabus_estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `silabus_unidad`
--
ALTER TABLE `silabus_unidad`
  ADD PRIMARY KEY (`id_silabus`,`id_unidad`),
  ADD KEY `id_unidad` (`id_unidad`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_egresado` (`id_egresado`),
  ADD KEY `id_tipo_solicitud` (`id_tipo_solicitud`);

--
-- Indices de la tabla `tics`
--
ALTER TABLE `tics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tics_postulante`
--
ALTER TABLE `tics_postulante`
  ADD PRIMARY KEY (`id_tics`,`id_postulante`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_atencion`
--
ALTER TABLE `tipo_atencion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_colegio`
--
ALTER TABLE `tipo_colegio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_comida`
--
ALTER TABLE `tipo_comida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_docente`
--
ALTER TABLE `tipo_docente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_plaza`
--
ALTER TABLE `tipo_plaza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_solicitud`
--
ALTER TABLE `tipo_solicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `titulos_profesionales`
--
ALTER TABLE `titulos_profesionales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_postulante` (`id_postulante`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidad_contenido`
--
ALTER TABLE `unidad_contenido`
  ADD PRIMARY KEY (`id_unidad`,`id_contenido`),
  ADD KEY `id_contenido` (`id_contenido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncio_persona`
--
ALTER TABLE `anuncio_persona`
  MODIFY `id_postulante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `area_carrera`
--
ALTER TABLE `area_carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asesor`
--
ALTER TABLE `asesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignatura_turno_seccion`
--
ALTER TABLE `asignatura_turno_seccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencia_alumno`
--
ALTER TABLE `asistencia_alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bibliotecario`
--
ALTER TABLE `bibliotecario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carga`
--
ALTER TABLE `carga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ccd`
--
ALTER TABLE `ccd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciclo`
--
ALTER TABLE `ciclo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clase_plaza`
--
ALTER TABLE `clase_plaza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colegio`
--
ALTER TABLE `colegio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conductor`
--
ALTER TABLE `conductor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenido`
--
ALTER TABLE `contenido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso_docente`
--
ALTER TABLE `curso_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dia`
--
ALTER TABLE `dia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `egresado`
--
ALTER TABLE `egresado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `escuela`
--
ALTER TABLE `escuela`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eva_ccd_postulante`
--
ALTER TABLE `eva_ccd_postulante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiencia_docencia`
--
ALTER TABLE `experiencia_docencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiencia_profesional`
--
ALTER TABLE `experiencia_profesional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario_bus`
--
ALTER TABLE `horario_bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario_docente`
--
ALTER TABLE `horario_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `investigaciones`
--
ALTER TABLE `investigaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro_facultad_biblioteca`
--
ALTER TABLE `libro_facultad_biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `malla`
--
ALTER TABLE `malla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `otras_participaciones`
--
ALTER TABLE `otras_participaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paraderos`
--
ALTER TABLE `paraderos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `patios`
--
ALTER TABLE `patios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil_profesional`
--
ALTER TABLE `perfil_profesional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plaza`
--
ALTER TABLE `plaza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plaza_asignatura`
--
ALTER TABLE `plaza_asignatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postulante`
--
ALTER TABLE `postulante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `predio`
--
ALTER TABLE `predio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prestamo_alumno`
--
ALTER TABLE `prestamo_alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pretamo_docente`
--
ALTER TABLE `pretamo_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `representante_empresa`
--
ALTER TABLE `representante_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `silabus`
--
ALTER TABLE `silabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `silabus_estado`
--
ALTER TABLE `silabus_estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tics`
--
ALTER TABLE `tics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_atencion`
--
ALTER TABLE `tipo_atencion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_colegio`
--
ALTER TABLE `tipo_colegio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_comida`
--
ALTER TABLE `tipo_comida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_docente`
--
ALTER TABLE `tipo_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_plaza`
--
ALTER TABLE `tipo_plaza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_solicitud`
--
ALTER TABLE `tipo_solicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `titulos_profesionales`
--
ALTER TABLE `titulos_profesionales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrativo`
--
ALTER TABLE `administrativo`
  ADD CONSTRAINT `administrativo_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`),
  ADD CONSTRAINT `administrativo_ibfk_2` FOREIGN KEY (`id_biblioteca`) REFERENCES `biblioteca` (`id`),
  ADD CONSTRAINT `administrativo_ibfk_3` FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id`);

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id`),
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id`),
  ADD CONSTRAINT `alumno_ibfk_3` FOREIGN KEY (`id_colegio`) REFERENCES `colegio` (`id`),
  ADD CONSTRAINT `alumno_ibfk_4` FOREIGN KEY (`id_predio`) REFERENCES `predio` (`id`),
  ADD CONSTRAINT `alumno_ibfk_5` FOREIGN KEY (`id_modalidad`) REFERENCES `modalidad` (`id`),
  ADD CONSTRAINT `alumno_ibfk_6` FOREIGN KEY (`id_nacionalidad`) REFERENCES `nacionalidad` (`id`),
  ADD CONSTRAINT `alumno_ibfk_7` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`),
  ADD CONSTRAINT `alumno_ibfk_8` FOREIGN KEY (`id_escuela`) REFERENCES `escuela` (`id`);

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `anuncio_ibfk_1` FOREIGN KEY (`id_escuela`) REFERENCES `escuela` (`id`),
  ADD CONSTRAINT `anuncio_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `anuncio_ibfk_3` FOREIGN KEY (`id_distrito`) REFERENCES `distrito` (`id`);

--
-- Filtros para la tabla `anuncio_persona`
--
ALTER TABLE `anuncio_persona`
  ADD CONSTRAINT `anuncio_persona_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`),
  ADD CONSTRAINT `anuncio_persona_ibfk_2` FOREIGN KEY (`id_anuncio`) REFERENCES `anuncio` (`id`);

--
-- Filtros para la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD CONSTRAINT `asignacion_ibfk_1` FOREIGN KEY (`id_curso_docente`) REFERENCES `curso_docente` (`id`),
  ADD CONSTRAINT `asignacion_ibfk_2` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id`);

--
-- Filtros para la tabla `asignacion_horario`
--
ALTER TABLE `asignacion_horario`
  ADD CONSTRAINT `asignacion_horario_ibfk_1` FOREIGN KEY (`id_asignacion`) REFERENCES `asignacion` (`id`),
  ADD CONSTRAINT `asignacion_horario_ibfk_2` FOREIGN KEY (`id_horario_docente`) REFERENCES `horario_docente` (`id`);

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`id_ciclo`) REFERENCES `ciclo` (`id`),
  ADD CONSTRAINT `asignatura_ibfk_2` FOREIGN KEY (`id_escuela`) REFERENCES `escuela` (`id`),
  ADD CONSTRAINT `asignatura_ibfk_3` FOREIGN KEY (`id_malla`) REFERENCES `malla` (`id`);

--
-- Filtros para la tabla `asignatura_turno_seccion`
--
ALTER TABLE `asignatura_turno_seccion`
  ADD CONSTRAINT `asignatura_turno_seccion_ibfk_1` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id`),
  ADD CONSTRAINT `asignatura_turno_seccion_ibfk_2` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id`),
  ADD CONSTRAINT `asignatura_turno_seccion_ibfk_3` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id`);

--
-- Filtros para la tabla `autores_libros`
--
ALTER TABLE `autores_libros`
  ADD CONSTRAINT `autores_libros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `autores_libros_ibfk_2` FOREIGN KEY (`id_libros`) REFERENCES `libros` (`id`);

--
-- Filtros para la tabla `bibliotecario`
--
ALTER TABLE `bibliotecario`
  ADD CONSTRAINT `bibliotecario_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`),
  ADD CONSTRAINT `bibliotecario_ibfk_2` FOREIGN KEY (`id_biblioteca`) REFERENCES `biblioteca` (`id`);

--
-- Filtros para la tabla `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id`),
  ADD CONSTRAINT `bus_ibfk_2` FOREIGN KEY (`id_horario`) REFERENCES `horario_bus` (`id`),
  ADD CONSTRAINT `bus_ibfk_3` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`);

--
-- Filtros para la tabla `carga`
--
ALTER TABLE `carga`
  ADD CONSTRAINT `carga_ibfk_1` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id`),
  ADD CONSTRAINT `carga_ibfk_2` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id`),
  ADD CONSTRAINT `carga_ibfk_3` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`),
  ADD CONSTRAINT `carga_ibfk_4` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id`),
  ADD CONSTRAINT `carga_ibfk_5` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`);

--
-- Filtros para la tabla `categorias_biblioteca`
--
ALTER TABLE `categorias_biblioteca`
  ADD CONSTRAINT `categorias_biblioteca_ibfk_1` FOREIGN KEY (`id_biblioteca`) REFERENCES `biblioteca` (`id`),
  ADD CONSTRAINT `categorias_biblioteca_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `ciclo`
--
ALTER TABLE `ciclo`
  ADD CONSTRAINT `ciclo_ibfk_1` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id`),
  ADD CONSTRAINT `ciclo_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id`);

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `clase_ibfk_1` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id`),
  ADD CONSTRAINT `clase_ibfk_2` FOREIGN KEY (`id_asistencia_alumno`) REFERENCES `asistencia_alumno` (`id`),
  ADD CONSTRAINT `clase_ibfk_3` FOREIGN KEY (`id_horario_clase`) REFERENCES `horario_docente` (`id`);

--
-- Filtros para la tabla `clase_plaza`
--
ALTER TABLE `clase_plaza`
  ADD CONSTRAINT `clase_plaza_ibfk_1` FOREIGN KEY (`id_tipo_plaza`) REFERENCES `tipo_plaza` (`id`),
  ADD CONSTRAINT `clase_plaza_ibfk_2` FOREIGN KEY (`id_carga_academica`) REFERENCES `carga_academica` (`id`);

--
-- Filtros para la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD CONSTRAINT `colegio_ibfk_1` FOREIGN KEY (`id_tipo_colegio`) REFERENCES `tipo_colegio` (`id`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`id_ciclo`) REFERENCES `ciclo` (`id`);

--
-- Filtros para la tabla `curso_docente`
--
ALTER TABLE `curso_docente`
  ADD CONSTRAINT `curso_docente_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`),
  ADD CONSTRAINT `curso_docente_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`);

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `devolucion_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`id_distrito`) REFERENCES `distrito` (`id`);

--
-- Filtros para la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `distrito_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id`);

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id`),
  ADD CONSTRAINT `docente_ibfk_2` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`),
  ADD CONSTRAINT `docente_ibfk_3` FOREIGN KEY (`id_tipo_docente`) REFERENCES `tipo_docente` (`id`);

--
-- Filtros para la tabla `egresado`
--
ALTER TABLE `egresado`
  ADD CONSTRAINT `egresado_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id`),
  ADD CONSTRAINT `egresado_ibfk_2` FOREIGN KEY (`id_pago`) REFERENCES `pago` (`id`);

--
-- Filtros para la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD CONSTRAINT `escuela_ibfk_1` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id`);

--
-- Filtros para la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD CONSTRAINT `especialidad_ibfk_1` FOREIGN KEY (`id_area_carrera`) REFERENCES `area_carrera` (`id`),
  ADD CONSTRAINT `especialidad_ibfk_2` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id`);

--
-- Filtros para la tabla `eva_ccd_postulante`
--
ALTER TABLE `eva_ccd_postulante`
  ADD CONSTRAINT `eva_ccd_postulante_ibfk_1` FOREIGN KEY (`id_ccd`) REFERENCES `ccd` (`id`),
  ADD CONSTRAINT `eva_ccd_postulante_ibfk_2` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`);

--
-- Filtros para la tabla `experiencia_docencia`
--
ALTER TABLE `experiencia_docencia`
  ADD CONSTRAINT `experiencia_docencia_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`);

--
-- Filtros para la tabla `experiencia_profesional`
--
ALTER TABLE `experiencia_profesional`
  ADD CONSTRAINT `experiencia_profesional_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`);

--
-- Filtros para la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD CONSTRAINT `facultad_ibfk_1` FOREIGN KEY (`id_predio`) REFERENCES `predio` (`id`),
  ADD CONSTRAINT `facultad_ibfk_2` FOREIGN KEY (`id_area_carrera`) REFERENCES `area_carrera` (`id`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`id_dia`) REFERENCES `dia` (`id`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`id_carga`) REFERENCES `carga` (`id`);

--
-- Filtros para la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD CONSTRAINT `idiomas_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`);

--
-- Filtros para la tabla `investigaciones`
--
ALTER TABLE `investigaciones`
  ADD CONSTRAINT `investigaciones_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_paises`) REFERENCES `paises` (`id`),
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `libro_facultad_biblioteca`
--
ALTER TABLE `libro_facultad_biblioteca`
  ADD CONSTRAINT `libro_facultad_biblioteca_ibfk_1` FOREIGN KEY (`id_biblioteca`) REFERENCES `biblioteca` (`id`);

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`id_asginacion`) REFERENCES `asignacion` (`id`),
  ADD CONSTRAINT `matricula_ibfk_3` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id`);

--
-- Filtros para la tabla `otras_participaciones`
--
ALTER TABLE `otras_participaciones`
  ADD CONSTRAINT `otras_participaciones_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`);

--
-- Filtros para la tabla `paraderos`
--
ALTER TABLE `paraderos`
  ADD CONSTRAINT `paraderos_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`),
  ADD CONSTRAINT `paraderos_ibfk_2` FOREIGN KEY (`id_distrito`) REFERENCES `distrito` (`id`);

--
-- Filtros para la tabla `patios`
--
ALTER TABLE `patios`
  ADD CONSTRAINT `patios_ibfk_1` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id`);

--
-- Filtros para la tabla `perfil_profesional`
--
ALTER TABLE `perfil_profesional`
  ADD CONSTRAINT `perfil_profesional_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`);

--
-- Filtros para la tabla `plaza`
--
ALTER TABLE `plaza`
  ADD CONSTRAINT `plaza_ibfk_1` FOREIGN KEY (`id_clase_plaza`) REFERENCES `clase_plaza` (`id`);

--
-- Filtros para la tabla `plaza_asignatura`
--
ALTER TABLE `plaza_asignatura`
  ADD CONSTRAINT `plaza_asignatura_ibfk_1` FOREIGN KEY (`id_asignatura_turno_seccion`) REFERENCES `asignatura_turno_seccion` (`id`),
  ADD CONSTRAINT `plaza_asignatura_ibfk_2` FOREIGN KEY (`id_plaza`) REFERENCES `plaza` (`id`);

--
-- Filtros para la tabla `postulante`
--
ALTER TABLE `postulante`
  ADD CONSTRAINT `postulante_ibfk_1` FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id`),
  ADD CONSTRAINT `postulante_ibfk_10` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id`),
  ADD CONSTRAINT `postulante_ibfk_11` FOREIGN KEY (`id_nacionalidad`) REFERENCES `nacionalidad` (`id`),
  ADD CONSTRAINT `postulante_ibfk_2` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidad` (`id`),
  ADD CONSTRAINT `postulante_ibfk_3` FOREIGN KEY (`id_colegio`) REFERENCES `colegio` (`id`),
  ADD CONSTRAINT `postulante_ibfk_4` FOREIGN KEY (`id_predio`) REFERENCES `predio` (`id`),
  ADD CONSTRAINT `postulante_ibfk_5` FOREIGN KEY (`id_modalidad`) REFERENCES `modalidad` (`id`),
  ADD CONSTRAINT `postulante_ibfk_6` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id`),
  ADD CONSTRAINT `postulante_ibfk_7` FOREIGN KEY (`id_plaza`) REFERENCES `plaza` (`id`),
  ADD CONSTRAINT `postulante_ibfk_8` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id`),
  ADD CONSTRAINT `postulante_ibfk_9` FOREIGN KEY (`id_estado_civil`) REFERENCES `estado_civil` (`id`);

--
-- Filtros para la tabla `prestamo_alumno`
--
ALTER TABLE `prestamo_alumno`
  ADD CONSTRAINT `prestamo_alumno_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `prestamo_alumno_ibfk_2` FOREIGN KEY (`id_libros`) REFERENCES `libros` (`id`);

--
-- Filtros para la tabla `pretamo_docente`
--
ALTER TABLE `pretamo_docente`
  ADD CONSTRAINT `pretamo_docente_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`),
  ADD CONSTRAINT `pretamo_docente_ibfk_2` FOREIGN KEY (`id_libros`) REFERENCES `libros` (`id`);

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `representante_empresa`
--
ALTER TABLE `representante_empresa`
  ADD CONSTRAINT `representante_empresa_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_comida`) REFERENCES `tipo_comida` (`id`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_horarios`) REFERENCES `horarios` (`id`),
  ADD CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`id_atencion`) REFERENCES `tipo_atencion` (`id`),
  ADD CONSTRAINT `reserva_ibfk_4` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`);

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `resultados_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`);

--
-- Filtros para la tabla `saldo_alumno`
--
ALTER TABLE `saldo_alumno`
  ADD CONSTRAINT `saldo_alumno_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`);

--
-- Filtros para la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD CONSTRAINT `semestre_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id`);

--
-- Filtros para la tabla `silabus`
--
ALTER TABLE `silabus`
  ADD CONSTRAINT `silabus_ibfk_1` FOREIGN KEY (`id_curso_docente`) REFERENCES `curso_docente` (`id`),
  ADD CONSTRAINT `silabus_ibfk_2` FOREIGN KEY (`id_estado_silabus`) REFERENCES `silabus_estado` (`id`);

--
-- Filtros para la tabla `silabus_unidad`
--
ALTER TABLE `silabus_unidad`
  ADD CONSTRAINT `silabus_unidad_ibfk_1` FOREIGN KEY (`id_silabus`) REFERENCES `silabus` (`id`),
  ADD CONSTRAINT `silabus_unidad_ibfk_2` FOREIGN KEY (`id_unidad`) REFERENCES `unidad` (`id`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`id_egresado`) REFERENCES `egresado` (`id`),
  ADD CONSTRAINT `solicitud_ibfk_2` FOREIGN KEY (`id_tipo_solicitud`) REFERENCES `tipo_solicitud` (`id`);

--
-- Filtros para la tabla `tics_postulante`
--
ALTER TABLE `tics_postulante`
  ADD CONSTRAINT `tics_postulante_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`),
  ADD CONSTRAINT `tics_postulante_ibfk_2` FOREIGN KEY (`id_tics`) REFERENCES `tics` (`id`);

--
-- Filtros para la tabla `titulos_profesionales`
--
ALTER TABLE `titulos_profesionales`
  ADD CONSTRAINT `titulos_profesionales_ibfk_1` FOREIGN KEY (`id_postulante`) REFERENCES `postulante` (`id`);

--
-- Filtros para la tabla `unidad_contenido`
--
ALTER TABLE `unidad_contenido`
  ADD CONSTRAINT `unidad_contenido_ibfk_1` FOREIGN KEY (`id_contenido`) REFERENCES `contenido` (`id`),
  ADD CONSTRAINT `unidad_contenido_ibfk_2` FOREIGN KEY (`id_unidad`) REFERENCES `unidad` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

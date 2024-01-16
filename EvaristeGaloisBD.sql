SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE DATABASE evariste_galois_db;

USE evariste_galois_db;

CREATE TABLE `asistencia` (
  `idasis` int(11) NOT NULL, -- Identificador de la Tabla ASISTENCIAS
  `idalum` int(11) DEFAULT NULL, -- Identificador para saber a que registro de Tabla ALUMNOS corresponde.
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(), --Fecha y Hora de Realizacion del registro (AUTOMATICO)
  `asis` char(1) DEFAULT NULL --Asistencia del Alumno ( A : Asisto, F :  Falto)
  `marca` char(1) DEFAULT NULL --Marca se si la Asistencia fue Salida o Entrada ( E : Entrada, S :  Salida)
  
  --Marcas para aceptar Caracteres Extraños ( Ñ , Tildes, etc )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Datos para la tabla `asistencia`
--

INSERT INTO `asistenciae` (`idasis`, `idalum`, `fecha`, `asis`, `marca`) VALUES
(1, 1, '2024-01-10 15:27:57', 'A', ''),
(2, 1, '2024-01-10 16:18:48', 'A', ''),
(3, 1, '2024-01-10 16:18:57', 'A', ''),

-- --------------------------------------------------------


CREATE TABLE `estudiantes` (

--Datos Usados en Registro de Asistencia
  `id` int(11) NOT NULL,
  `dni` char(8) NOT NULL,
  `grado` char(1) DEFAULT NULL,
  `seccion` char(1) DEFAULT NULL,

--Datos Generales del Alumno : 
  `nivel` varchar(25) DEFAULT NULL,
  `apenom` varchar(255) DEFAULT NULL,
  `mensualidad` varchar(25) DEFAULT NULL,
  `fecnac` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `distrito` varchar(125) DEFAULT NULL,
  `procedencia` varchar(125) DEFAULT NULL,
  `emailA` varchar(125) DEFAULT NULL,
  `celularA` varchar(20) DEFAULT NULL,
  `apoderado` varchar(255) DEFAULT NULL,
  `fechnacApo` date DEFAULT NULL,
  `lugnacApo` varchar(125) DEFAULT NULL,
  `gradoinstr` varchar(125) DEFAULT NULL,
  `ocupacion` varchar(125) DEFAULT NULL,
  `dniApo` char(8) DEFAULT NULL,
  `correoApo` varchar(125) DEFAULT NULL,
  `celularfijo` varchar(20) DEFAULT NULL,
  `celular1` char(9) DEFAULT NULL,
  `celular2` char(9) DEFAULT NULL,
  `celular3` char(9) DEFAULT NULL,

--Datos aun quedan pendiente (Posible Eliminacion a Futuro)
  `newfld` varchar(255) DEFAULT NULL,
  `deben` int(3) DEFAULT NULL,
  `f` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL,
  `d` int(11) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  
--Donde Guarda la URL del fotogacias del Alumnos  
  `img` varchar(250) DEFAULT NULL

 --Marcas para aceptar Caracteres Extraños ( Ñ , Tildes, etc )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `dni`, `nivel`, `grado`, `seccion`, `apenom`, `mensualidad`, `fecnac`, `sexo`, `direccion`, `distrito`, `procedencia`, `emailA`, `celularA`, `apoderado`, `fechnacApo`, `lugnacApo`, `gradoinstr`, `ocupacion`, `dniApo`, `correoApo`, `celularfijo`, `celular1`, `celular2`, `celular3`, `newfld`, `deben`, `f`, `c`, `d`, `a`, `img`) VALUES
(1, '77902058', 'P', '1', 'A', 'Alcazar Aldazabal, Carlos Caleb', '130', '2012-09-01', 'M', 'C.P. Hualcara Mz. C - Lote 05', 'Imperial', 'Maria Enriqueta Dominice', NULL, '', 'Aldazabal Villcas, H', '2024-01-09', 'Superior', 'Docente', 'Profesor', '15341402', NULL, '965772423', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'img/img1.jpg'),
(2, '63695009', 'P', '1', 'A', 'Condori Alcala, Jesús Andrés', '260', '2012-05-19', 'M', 'Av. Grau C/ Panamericana Sur S/N', 'San Vicente', 'María Enriqueta Dominicci', NULL, '960847347', 'Alcalá Díaz, María J', '1983-05-13', '', 'Superior', 'Enfermera', '41835533', NULL, '962319246', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'img/img2.jpg'),
(3, '78026836', 'P', '1', 'A', 'Cuba Pariona, Jorge Aaron', '260', '2013-02-26', 'M', 'Urb. Ramos Larrea  Jr. Jose R. Espinoza Mz. A - Lo', 'Imperial', 'Niños de Belen', NULL, '', '', '1974-12-17', 'Pariona Pérez, Lidia', 'Secundaria', 'Ama de Casa', '10000703', '', '926781349', '955347860', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistenciae`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`idasis`);

--

-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas seleccionadas;
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `idasis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;



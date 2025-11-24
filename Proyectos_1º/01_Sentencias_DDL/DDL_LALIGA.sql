-- #############################################
-- # TEMA 1: EJERCICIO DDL - DEFINICIÓN DE DATOS
-- # Objetivo: Practicar CREATE, ALTER y DROP
-- #############################################

-- 1. CREACIÓN DE LA BBDD Y TABLA INICIAL (CREATE)
CREATE DATABASE LALIGA;
USE LALIGA;

CREATE TABLE EQUIPOS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(15) NOT NULL,
    NUM_JUGADORES TINYINT,
    CIUDAD VARCHAR (50),
    FECHA_CREACION DATETIME,
    ESTADIO VARCHAR(100)
);

-- 2. MODIFICACIONES SOLICITADAS (ALTER)

-- 1. Añade una columna llamada partidos_ganados de tipo TINYINT.
ALTER TABLE EQUIPOS ADD PARTIDOS_GANADOS TINYINT;

-- 2. Renombra la columna nombre a nombre_equipo de tipo varchar(40) NOT NULL.
ALTER TABLE EQUIPOS CHANGE NOMBRE NOMBRE_EQUIPO VARCHAR(40) NOT NULL;

-- 3. Elimina la columna ciudad.
ALTER TABLE EQUIPOS DROP CIUDAD;

-- 4. Cambia el tipo de dato de fecha_creacion a DATE.
ALTER TABLE EQUIPOS CHANGE FECHA_CREACION FECHA_CREACION DATE;

-- 5. Modifica la columna Num_jugadores a N_jugadores INT.
ALTER TABLE EQUIPOS CHANGE NUM_JUGADORES N_JUGADORES INT;

-- 6. Añade una columna llamada partidos_jugados de tipo INT.
ALTER TABLE EQUIPOS ADD PARTIDOS_JUGADOS INT;

-- 8. Añade una columna llamada presupuesto de tipo FLOAT.
ALTER TABLE EQUIPOS ADD PRESUPUESTO FLOAT;

-- 3. RENOMBRAR Y ELIMINAR (RENAME y DROP)

-- 7. Modifica el nombre de la tabla a equipos_laliga.
RENAME TABLE EQUIPOS TO EQUIPOS_LALIGA;

-- 9. Elimina la tabla Equipos (la tabla renombrada).
DROP TABLE EQUIPOS_LALIGA; 

-- 10. Elimina la base de datos.
DROP DATABASE LALIGA;
-- #################################################
-- # TEMA 2: EJERCICIO DDL - MODIFICACIÓN DE TABLAS
-- # Objetivo: Practicar CREATE, ALTER (ADD, CHANGE, DROP) y MODIFY
-- #################################################

-- CREACIÓN DE LA BASE DE DATOS
CREATE DATABASE BARBERIA2;
USE BARBERIA2;

-- 1. CREACIÓN DE LA TABLA INICIAL
CREATE TABLE PRODUCTOS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(40),
    TIPO VARCHAR(25) NOT NULL,
    PRECIO DECIMAL(5,2) NOT NULL,
    STOCK INT NOT NULL,
    PROVEEDOR VARCHAR(30)
);

-- ######################################
-- 2. APLICACIÓN DE LAS 10 MODIFICACIONES
-- ######################################

-- 1. Añadir la columna FECHA_INGRESO de tipo DATE.
ALTER TABLE PRODUCTOS ADD FECHA_INGRESO DATE;

-- 2. Cambiar el nombre de la columna STOCK a CANTIDAD_DISPONIBLE (Usamos CHANGE para renombrar y mantenemos NOT NULL).
ALTER TABLE PRODUCTOS CHANGE STOCK CANTIDAD_DISPONIBLE INT NOT NULL; 

-- 3. Modificar la columna PRECIO para que acepte valores DECIMAL(7,2). (Usamos MODIFY para cambiar el tipo/tamaño).
ALTER TABLE PRODUCTOS MODIFY PRECIO DECIMAL(7,2) NOT NULL; 

-- 4. Añadir la columna DESCUENTO de tipo TINYINT.
ALTER TABLE PRODUCTOS ADD DESCUENTO TINYINT;

-- 5. Eliminar la columna PROVEEDOR.
ALTER TABLE PRODUCTOS DROP PROVEEDOR;

-- 6. Modificar la columna NOMBRE para que acepte 50 caracteres.
ALTER TABLE PRODUCTOS MODIFY NOMBRE VARCHAR(50); 

-- 7. Cambiar el nombre de la columna TIPO a CATEGORIA (Usamos CHANGE para renombrar).
ALTER TABLE PRODUCTOS CHANGE TIPO CATEGORIA VARCHAR(25) NOT NULL;

-- 8. Añadir la columna MARCA de tipo VARCHAR(25) NOT NULL.
ALTER TABLE PRODUCTOS ADD MARCA VARCHAR(25) NOT NULL;

-- 9. Añadir la columna CODIGO_BARRAS de tipo VARCHAR(15).
ALTER TABLE PRODUCTOS ADD CODIGO_BARRAS VARCHAR(15);

-- 10. Modificar CANTIDAD_DISPONIBLE a TINYINT (Usamos MODIFY para cambiar el tipo).
ALTER TABLE PRODUCTOS MODIFY CANTIDAD_DISPONIBLE TINYINT NOT NULL; 

-- ######################################
-- 3. OPCIONAL: ELIMINACIÓN DE LA BBDD
-- ######################################

-- Si quisieras eliminar la base de datos después de la práctica, el comando sería:
-- DROP DATABASE BARBERIA2;
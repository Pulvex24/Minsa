
CREATE DATABASE MINSA;
use MINSA;


CREATE TABLE SECCIONES ( 
   ID_SECCION int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   SECCION varchar(40) NOT NULL,
   FECHA_CREACION DATE
);

CREATE TABLE  ROLES  (
   ID_ROL int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   ID_SECCION int NOT NULL,
   ROL varchar(25) NOT NULL, 
   FECHA_CREACION DATE,
   FOREIGN KEY (ID_SECCION) REFERENCES SECCIONES(ID_SECCION)
);

CREATE TABLE PERMISOS (
  ID_PERMISO int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ID_ROL int NOT NULL,
  P_CONSULTAR VARCHAR(1),
  P_AGREGAR VARCHAR(1),
  P_MODIFICAR VARCHAR(1),
  P_ELIMINAR VARCHAR(1),
  P_TODO VARCHAR(1),
  FOREIGN KEY (ID_ROL) REFERENCES ROLES(ID_ROL)
);

CREATE TABLE MEDICOS (
ID_MEDICO int NOT NULL AUTO_INCREMENT PRIMARY KEY,
NOMBRE1 VARCHAR(20) NOT NULL,
NOMBRE2 VARCHAR(20),
APELLIDO1 VARCHAR(20) NOT NULL,
APELLIDO2 VARCHAR(20),
ESPECIALIDAD1 VARCHAR(40),
ESPECIALIDAD2 VARCHAR(40),
ESPECIALIDAD3 VARCHAR(40),
OTRAS TEXT,
CEDULA VARCHAR(40) NOT NULL,
SEXO VARCHAR (1) NOT NULL,
TELEFONO VARCHAR (20),
CORREO VARCHAR(40)
);


CREATE TABLE USUARIOS (
ID_USUARIO int NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_ROL int NOT NULL,
NOMBRE VARCHAR(20) NOT NULL,
APELLIDO VARCHAR(20) NOT NULL,
CORREO VARCHAR(40),
NICK VARCHAR(25) NOT NULL,
PASS VARCHAR(25) NOT NULL,
FOREIGN KEY (ID_ROL) REFERENCES ROLES(ID_ROL)
);

CREATE TABLE AREAS ( 
   ID_AREA int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   AREA varchar(40) NOT NULL
);

CREATE TABLE PROVINCIAS (
ID_PROVINCIA int NOT NULL AUTO_INCREMENT PRIMARY KEY,
PROVINCIA VARCHAR(40)
);

CREATE TABLE DISTRITOS (
ID_DISTRITO int NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_PROVINCIA int NOT NULL,
DISTRITO VARCHAR(40),
FOREIGN KEY (ID_PROVINCIA) REFERENCES PROVINCIAS(ID_PROVINCIA)
);

CREATE TABLE CORREGIMIENTOS (
ID_CORREGIMIENTO int NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_PROVINCIA int NOT NULL,
ID_DISTRITO int NOT NULL,
CORREGIMIENTO VARCHAR(40),
FOREIGN KEY (ID_PROVINCIA) REFERENCES PROVINCIAS(ID_PROVINCIA),
FOREIGN KEY (ID_DISTRITO) REFERENCES DISTRITOS(ID_DISTRITO)
);

CREATE TABLE PACIENTES (
ID_PACIENTE int NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_AREA int NOT NULL,
ID_PROVINCIA int NOT NULL,
ID_DISTRITO int NOT NULL,
ID_CORREGIMIENTO int NOT NULL,
NOMBRE1 VARCHAR(20) NOT NULL,
NOMBRE2 VARCHAR(20),
APELLIDO1 VARCHAR(20) NOT NULL,
APELLIDO2 VARCHAR(20),
DIAGNOSTICO TEXT,
PROCEDENCIA VARCHAR(40),
SEGURO VARCHAR(40),
RESPONSABLES TEXT,
EDAD int NOT NULL,
FECHA_NAC DATE NOT NULL,
CEDULA VARCHAR(40) NOT NULL,
SEXO VARCHAR (1) NOT NULL,
TIPAJE VARCHAR (10) NOT NULL,
TELEFONO VARCHAR (20),
RELIGION VARCHAR(40),
BARRIO VARCHAR (40),
CALLE VARCHAR (20),
NUMCASA int,
ESTADO INT DEFAULT 0,
FECHA DATE,
FOREIGN KEY (ID_AREA) REFERENCES AREAS(ID_AREA),
FOREIGN KEY (ID_PROVINCIA) REFERENCES PROVINCIAS(ID_PROVINCIA),
FOREIGN KEY (ID_DISTRITO) REFERENCES DISTRITOS(ID_DISTRITO),
FOREIGN KEY (ID_CORREGIMIENTO) REFERENCES CORREGIMIENTOS(ID_CORREGIMIENTO)
);


CREATE TABLE ENFERMERIAS (
ID_ENFERMERIA int NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_PACIENTE int NOT NULL,
ID_MEDICO int NOT NULL,
DIAGNOSTICO TEXT,
PROCEDENCIA VARCHAR(40),
SEGURO VARCHAR(40),
RESPONSABLES TEXT,
SVITALES VARCHAR(20),
FLLEGADA VARCHAR(20),
CONDICION VARCHAR(20),
GLASGOWVERVAL INT,
GLASGOWVOJOS INT,
GLASGOWMOTOR INT,
FECHA DATE,
TURNO VARCHAR (20),
OBSERVACION TEXT,
FOREIGN KEY (ID_PACIENTE) REFERENCES PACIENTES(ID_PACIENTE),
FOREIGN KEY (ID_MEDICO) REFERENCES MEDICOS(ID_MEDICO)
);


CREATE TABLE HMEDI (
ID_HMEDICAM  int NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_PACIENTE int NOT NULL,
FECHA DATE,
FOREIGN KEY (ID_PACIENTE) REFERENCES PACIENTES(ID_PACIENTE)
);


CREATE TABLE DIETAS (
ID_DIETA  int NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_PACIENTE int NOT NULL,
FECHA DATE,
DIETA VARCHAR (20),
NOTA TEXT,
FOREIGN KEY (ID_PACIENTE) REFERENCES PACIENTES(ID_PACIENTE)
);


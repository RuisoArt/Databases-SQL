-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-09-23 17:01:57.781

-- tables
-- Table: Pensum
CREATE TABLE Pensum (
    idPensum int NOT NULL,
    nombrePensum varchar(40) NOT NULL,
    fechaIn date NOT NULL,
    fechaFin date NOT NULL,
    activo varchar(5) NOT NULL,
    duracion varchar(15) NOT NULL,
    idPrograma int NOT NULL,
    programas_idPrograma int NOT NULL,
    CONSTRAINT Pensum_pk PRIMARY KEY (idPensum)
);

-- Table: asignaturas
CREATE TABLE asignaturas (
    idAsignatura int NOT NULL,
    nombre varchar(40) NOT NULL,
    docente varchar(40) NOT NULL,
    creditos int NOT NULL,
    horas int NOT NULL,
    idNivel int NOT NULL,
    niveles_idNivel int NOT NULL,
    CONSTRAINT asignaturas_pk PRIMARY KEY (idAsignatura)
);

-- Table: divisiones
CREATE TABLE divisiones (
    idDivision int NOT NULL,
    nombreDivision int NOT NULL,
    secretarioDivision int NOT NULL,
    decanoDivision int NOT NULL,
    idSeccional int NOT NULL,
    seccionales_idSeccional int NOT NULL,
    CONSTRAINT divisiones_pk PRIMARY KEY (idDivision)
);

-- Table: estudiantes
CREATE TABLE estudiantes (
    idEstudiante int NOT NULL,
    nombre varchar(40) NOT NULL,
    apellido varchar(40) NOT NULL,
    codigo varchar(15) NOT NULL,
    celular int NOT NULL,
    nivel varchar(15) NOT NULL,
    nombrePensum varchar(50) NOT NULL,
    idPensum int NOT NULL,
    Pensum_idPensum int NOT NULL,
    CONSTRAINT estudiantes_pk PRIMARY KEY (idEstudiante)
);

-- Table: facultades
CREATE TABLE facultades (
    idFacultad int NOT NULL,
    nombreFacultad varchar(50) NOT NULL,
    decanoFacultad varchar(50) NOT NULL,
    idDivision int NOT NULL,
    divisiones_idDivision int NOT NULL,
    CONSTRAINT facultades_pk PRIMARY KEY (idFacultad)
);

-- Table: niveles
CREATE TABLE niveles (
    idNivel int NOT NULL,
    nombreNivel varchar(20) NOT NULL,
    idPensum int NOT NULL,
    Pensum_idPensum int NOT NULL,
    CONSTRAINT niveles_pk PRIMARY KEY (idNivel)
);

-- Table: programas
CREATE TABLE programas (
    idPrograma int NOT NULL,
    nombre varchar(50) NOT NULL,
    responsable varchar(50) NOT NULL,
    nivelFormacion varchar(20) NOT NULL,
    escolaridad varchar(20) NOT NULL,
    jornada varchar(10) NOT NULL,
    duracion varchar(15) NOT NULL,
    idFacultad int NOT NULL,
    facultades_idFacultad int NOT NULL,
    CONSTRAINT programas_pk PRIMARY KEY (idPrograma)
);

-- Table: seccionales
CREATE TABLE seccionales (
    idSeccional int NOT NULL,
    nombreSeccional varchar(50) NOT NULL,
    ciudad varchar(20) NOT NULL,
    direccion varchar(100) NOT NULL,
    telefono varchar(14) NOT NULL,
    rector varchar(45) NOT NULL,
    fechaInicio date NOT NULL,
    CONSTRAINT seccionales_pk PRIMARY KEY (idSeccional)
);

-- Table: sedes
CREATE TABLE sedes (
    idSede int NOT NULL,
    nombreSede varchar(40) NOT NULL,
    ciudad varchar(30) NOT NULL,
    direccion varchar(50) NOT NULL,
    area int NOT NULL,
    geoPosicion int NOT NULL,
    idSeccional int NOT NULL,
    seccionales_idSeccional int NOT NULL,
    CONSTRAINT sedes_pk PRIMARY KEY (idSede)
);

-- foreign keys
-- Reference: FK_Pensum_programas (table: Pensum)
ALTER TABLE Pensum ADD CONSTRAINT FK_Pensum_programas FOREIGN KEY FK_Pensum_programas (programas_idPrograma)
    REFERENCES programas (idPrograma);

-- Reference: FK_asignaturas_niveles (table: asignaturas)
ALTER TABLE asignaturas ADD CONSTRAINT FK_asignaturas_niveles FOREIGN KEY FK_asignaturas_niveles (niveles_idNivel)
    REFERENCES niveles (idNivel);

-- Reference: FK_divisiones_seccionales (table: divisiones)
ALTER TABLE divisiones ADD CONSTRAINT FK_divisiones_seccionales FOREIGN KEY FK_divisiones_seccionales (seccionales_idSeccional)
    REFERENCES seccionales (idSeccional);

-- Reference: FK_estudiantes_Pensum (table: estudiantes)
ALTER TABLE estudiantes ADD CONSTRAINT FK_estudiantes_Pensum FOREIGN KEY FK_estudiantes_Pensum (Pensum_idPensum)
    REFERENCES Pensum (idPensum);

-- Reference: FK_facultades_divisiones (table: facultades)
ALTER TABLE facultades ADD CONSTRAINT FK_facultades_divisiones FOREIGN KEY FK_facultades_divisiones (divisiones_idDivision)
    REFERENCES divisiones (idDivision);

-- Reference: FK_niveles_Pensum (table: niveles)
ALTER TABLE niveles ADD CONSTRAINT FK_niveles_Pensum FOREIGN KEY FK_niveles_Pensum (Pensum_idPensum)
    REFERENCES Pensum (idPensum);

-- Reference: FK_programas_facultades (table: programas)
ALTER TABLE programas ADD CONSTRAINT FK_programas_facultades FOREIGN KEY FK_programas_facultades (facultades_idFacultad)
    REFERENCES facultades (idFacultad);

-- Reference: FK_sedes_seccionales (table: sedes)
ALTER TABLE sedes ADD CONSTRAINT FK_sedes_seccionales FOREIGN KEY FK_sedes_seccionales (seccionales_idSeccional)
    REFERENCES seccionales (idSeccional);

-- End of file.


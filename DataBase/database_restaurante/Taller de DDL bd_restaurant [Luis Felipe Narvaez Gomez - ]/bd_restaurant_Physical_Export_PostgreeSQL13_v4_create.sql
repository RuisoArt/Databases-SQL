-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-10-22 16:08:31.739

-- tables
-- Table: Acompanamientos
CREATE TABLE Acompanamientos (
    idAcompanamiento int  NOT NULL,
    anyo varchar(10)  NOT NULL,
    precio int  NOT NULL,
    existencias int  NOT NULL,
    unidadMedida varchar(45)  NOT NULL,
    nombreAcompanamiento varchar(45)  NOT NULL,
    TipoAcompanamiento_idTipoAcompanamiento int  NOT NULL,
    CONSTRAINT Acompanamientos_pk PRIMARY KEY (idAcompanamiento)
);

-- Table: Chef
CREATE TABLE Chef (
    idChef int  NOT NULL,
    paisOrigen int  NOT NULL,
    recetasAutoria int  NOT NULL,
    TipoPersona_idTipoPersona int  NOT NULL,
    CONSTRAINT Chef_pk PRIMARY KEY (idChef)
);

-- Table: Ingredientes
CREATE TABLE Ingredientes (
    idIngrediente int  NOT NULL,
    precio int  NOT NULL,
    exitencias int  NOT NULL,
    decripcion varchar(500)  NOT NULL,
    CONSTRAINT Ingredientes_pk PRIMARY KEY (idIngrediente)
);

-- Table: Menus
CREATE TABLE Menus (
    idMenus int  NOT NULL,
    nombre varchar(45)  NOT NULL,
    codigo varchar(45)  NOT NULL,
    precio int  NULL,
    Restaurante_idRestaurantee int  NOT NULL,
    CONSTRAINT Menus_pk PRIMARY KEY (idMenus)
);

-- Table: Persona
CREATE TABLE Persona (
    idPersona int  NOT NULL,
    nombre varchar(45)  NOT NULL,
    apellido varchar(45)  NOT NULL,
    descripcion varchar(500)  NOT NULL,
    edad varchar(10)  NOT NULL,
    Restaurante_idRestaurantee int  NOT NULL,
    CONSTRAINT Persona_pk PRIMARY KEY (idPersona)
);

-- Table: Porciones
CREATE TABLE Porciones (
    idPorcion int  NOT NULL,
    cantidadGramos varchar(45)  NOT NULL,
    ingredientes varchar(50)  NOT NULL,
    CONSTRAINT Porciones_pk PRIMARY KEY (idPorcion)
);

-- Table: Recetas
CREATE TABLE Recetas (
    idReceta int  NOT NULL,
    nombreReceta varchar(100)  NOT NULL,
    procedimiento varchar(1000)  NOT NULL,
    acompRecomendado varchar(45)  NOT NULL,
    autorCocinero int  NOT NULL,
    Menus_idMenus int  NOT NULL,
    Chef_idChef int  NOT NULL,
    CONSTRAINT Recetas_pk PRIMARY KEY (idReceta)
);

-- Table: Restaurante
CREATE TABLE Restaurante (
    idRestaurantee int  NOT NULL,
    direccion varchar(100)  NOT NULL,
    telefono varchar(45)  NOT NULL,
    nit varchar(45)  NOT NULL,
    CONSTRAINT Restaurante_pk PRIMARY KEY (idRestaurantee)
);

-- Table: TipoAcompanamiento
CREATE TABLE TipoAcompanamiento (
    idTipoAcompanamiento int  NOT NULL,
    tipoBebida varchar(45)  NOT NULL,
    CONSTRAINT TipoAcompanamiento_pk PRIMARY KEY (idTipoAcompanamiento)
);

-- Table: TipoPersona
CREATE TABLE TipoPersona (
    idTipoPersona int  NOT NULL,
    tipoPersona varchar(45)  NOT NULL,
    CONSTRAINT TipoPersona_pk PRIMARY KEY (idTipoPersona)
);

-- Table: acompXreceta
CREATE TABLE acompXreceta (
    idAcompanamientoXreceta int  NOT NULL,
    idReceta int  NOT NULL,
    idAcompanamiento int  NOT NULL,
    Recetas_idReceta int  NOT NULL,
    Acompanamientos_idAcompanamiento int  NOT NULL,
    CONSTRAINT acompXreceta_pk PRIMARY KEY (idAcompanamientoXreceta)
);

-- Table: ingredientesXporcion
CREATE TABLE ingredientesXporcion (
    idIngreXporcion int  NOT NULL,
    caloriasX100gramos int  NULL,
    cantidadIngredientes int  NOT NULL,
    idIngrediente int  NOT NULL,
    idPorcion int  NOT NULL,
    Porciones_idPorcion int  NOT NULL,
    Ingredientes_idIngrediente int  NOT NULL,
    CONSTRAINT ingredientesXporcion_pk PRIMARY KEY (idIngreXporcion)
);

-- Table: porcionXreceta
CREATE TABLE porcionXreceta (
    idPorcionReceta int  NOT NULL,
    cantidadPorcion int  NOT NULL,
    caloriasPorcion int  NULL,
    idReceta int  NOT NULL,
    idPorcion int  NOT NULL,
    Recetas_idReceta int  NOT NULL,
    Porciones_idPorcion int  NOT NULL,
    CONSTRAINT porcionXreceta_pk PRIMARY KEY (idPorcionReceta)
);

-- Table: tipopersonaXpersona
CREATE TABLE tipopersonaXpersona (
    idTipopersonaXpersona int  NOT NULL,
    idTipoPersona int  NOT NULL,
    idPersona int  NOT NULL,
    Persona_idPersona int  NOT NULL,
    TipoPersona_idTipoPersona int  NOT NULL,
    CONSTRAINT tipopersonaXpersona_pk PRIMARY KEY (idTipopersonaXpersona)
);

-- foreign keys
-- Reference: FK_Acomp_TipoAcomp (table: Acompanamientos)
ALTER TABLE Acompanamientos ADD CONSTRAINT FK_Acomp_TipoAcomp
    FOREIGN KEY (TipoAcompanamiento_idTipoAcompanamiento)
    REFERENCES TipoAcompanamiento (idTipoAcompanamiento)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_Chef_TipoPersona (table: Chef)
ALTER TABLE Chef ADD CONSTRAINT FK_Chef_TipoPersona
    FOREIGN KEY (TipoPersona_idTipoPersona)
    REFERENCES TipoPersona (idTipoPersona)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_Menus_Restaurante (table: Menus)
ALTER TABLE Menus ADD CONSTRAINT FK_Menus_Restaurante
    FOREIGN KEY (Restaurante_idRestaurantee)
    REFERENCES Restaurante (idRestaurantee)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_Persona_Restaurante (table: Persona)
ALTER TABLE Persona ADD CONSTRAINT FK_Persona_Restaurante
    FOREIGN KEY (Restaurante_idRestaurantee)
    REFERENCES Restaurante (idRestaurantee)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_Recetas_Chef (table: Recetas)
ALTER TABLE Recetas ADD CONSTRAINT FK_Recetas_Chef
    FOREIGN KEY (Chef_idChef)
    REFERENCES Chef (idChef)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_Recetas_Menus (table: Recetas)
ALTER TABLE Recetas ADD CONSTRAINT FK_Recetas_Menus
    FOREIGN KEY (Menus_idMenus)
    REFERENCES Menus (idMenus)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_acompXreceta_Acomp (table: acompXreceta)
ALTER TABLE acompXreceta ADD CONSTRAINT FK_acompXreceta_Acomp
    FOREIGN KEY (Acompanamientos_idAcompanamiento)
    REFERENCES Acompanamientos (idAcompanamiento)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_acompXreceta_Recetas (table: acompXreceta)
ALTER TABLE acompXreceta ADD CONSTRAINT FK_acompXreceta_Recetas
    FOREIGN KEY (Recetas_idReceta)
    REFERENCES Recetas (idReceta)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ingreXporcion_Ingre (table: ingredientesXporcion)
ALTER TABLE ingredientesXporcion ADD CONSTRAINT FK_ingreXporcion_Ingre
    FOREIGN KEY (Ingredientes_idIngrediente)
    REFERENCES Ingredientes (idIngrediente)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ingreXporcion_Porciones (table: ingredientesXporcion)
ALTER TABLE ingredientesXporcion ADD CONSTRAINT FK_ingreXporcion_Porciones
    FOREIGN KEY (Porciones_idPorcion)
    REFERENCES Porciones (idPorcion)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_porcionXreceta_Porciones (table: porcionXreceta)
ALTER TABLE porcionXreceta ADD CONSTRAINT FK_porcionXreceta_Porciones
    FOREIGN KEY (Porciones_idPorcion)
    REFERENCES Porciones (idPorcion)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_porcionXreceta_Recetas (table: porcionXreceta)
ALTER TABLE porcionXreceta ADD CONSTRAINT FK_porcionXreceta_Recetas
    FOREIGN KEY (Recetas_idReceta)
    REFERENCES Recetas (idReceta)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_tipopersonXpersona_Persona (table: tipopersonaXpersona)
ALTER TABLE tipopersonaXpersona ADD CONSTRAINT FK_tipopersonXpersona_Persona
    FOREIGN KEY (Persona_idPersona)
    REFERENCES Persona (idPersona)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_tipopersonaXpersona_TipoPersona (table: tipopersonaXpersona)
ALTER TABLE tipopersonaXpersona ADD CONSTRAINT FK_tipopersonaXpersona_TipoPersona
    FOREIGN KEY (TipoPersona_idTipoPersona)
    REFERENCES TipoPersona (idTipoPersona)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- sequences
-- Sequence: Acompanamientos_seq
CREATE SEQUENCE Acompanamientos_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Chef_seq
CREATE SEQUENCE Chef_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Ingredientes_seq
CREATE SEQUENCE Ingredientes_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Menus_seq
CREATE SEQUENCE Menus_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Persona_seq
CREATE SEQUENCE Persona_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Porciones_seq
CREATE SEQUENCE Porciones_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Recetas_seq
CREATE SEQUENCE Recetas_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: Restaurante_seq
CREATE SEQUENCE Restaurante_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: TipoAcompanamiento_seq
CREATE SEQUENCE TipoAcompanamiento_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: TipoPersona_seq
CREATE SEQUENCE TipoPersona_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: acompXreceta_seq
CREATE SEQUENCE acompXreceta_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: ingredientesXporcion_seq
CREATE SEQUENCE ingredientesXporcion_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: porcionXreceta_seq
CREATE SEQUENCE porcionXreceta_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- Sequence: tipopersonaXpersona_seq
CREATE SEQUENCE tipopersonaXpersona_seq
      INCREMENT BY 1
      NO MINVALUE
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

-- End of file.


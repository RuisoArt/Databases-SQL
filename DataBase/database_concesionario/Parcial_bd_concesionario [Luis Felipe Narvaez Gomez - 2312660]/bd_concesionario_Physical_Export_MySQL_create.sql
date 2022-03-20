-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-09-24 06:17:04.128

-- tables
-- Table: Clientes
CREATE TABLE Clientes (
    idCliente int NOT NULL,
    direccion varchar(100) NOT NULL,
    ciudad varchar(45) NOT NULL,
    departamento varchar(45) NOT NULL,
    TipoPersona_idTipoPersona int NOT NULL,
    CONSTRAINT Clientes_pk PRIMARY KEY (idCliente)
);

-- Table: Compras
CREATE TABLE Compras (
    idCompra int NOT NULL,
    codigoCompraCliente varchar(20) NOT NULL,
    cantidadCompra int NOT NULL,
    valorTotalCompra int NOT NULL,
    autosComprados varchar(500) NOT NULL,
    CONSTRAINT Compras_pk PRIMARY KEY (idCompra)
);

-- Table: Concesionarios
CREATE TABLE Concesionarios (
    idConcesionario int NOT NULL,
    nit varchar(25) NOT NULL,
    ciudad varchar(45) NOT NULL,
    departamento varchar(45) NOT NULL,
    direccion varchar(70) NOT NULL,
    telefono varchar(10) NOT NULL,
    CONSTRAINT Concesionarios_pk PRIMARY KEY (idConcesionario)
);

-- Table: Personas
CREATE TABLE Personas (
    idPersona int NOT NULL,
    nombre varchar(10) NOT NULL,
    apellido varchar(10) NOT NULL,
    cedula varchar(10) NOT NULL,
    edad varchar(3) NOT NULL,
    telefono varchar(10) NOT NULL,
    descripcion varchar(500) NOT NULL,
    CONSTRAINT Personas_pk PRIMARY KEY (idPersona)
);

-- Table: Revisiones
CREATE TABLE Revisiones (
    idRevisiones int NOT NULL,
    codigoRevision varchar(20) NOT NULL,
    cambioFiltro boolean NOT NULL,
    cambioFrenos boolean NOT NULL,
    cambioAceite boolean NOT NULL,
    fechaCambioFiltro date NOT NULL,
    fechaCambioFrenos date NOT NULL,
    fechaCambioAceite date NOT NULL,
    CONSTRAINT Revisiones_pk PRIMARY KEY (idRevisiones)
);

-- Table: TipoPersona
CREATE TABLE TipoPersona (
    idTipoPersona int NOT NULL,
    tipoPersona varchar(45) NOT NULL,
    CONSTRAINT TipoPersona_pk PRIMARY KEY (idTipoPersona)
);

-- Table: TipoPersonaXpersona
CREATE TABLE TipoPersonaXpersona (
    idTipPerXPer int NOT NULL,
    idPersona int NOT NULL,
    idTipoPersona int NOT NULL,
    Personas_idPersona int NOT NULL,
    TipoPersona_idTipoPersona int NOT NULL,
    CONSTRAINT TipoPersonaXpersona_pk PRIMARY KEY (idTipPerXPer)
);

-- Table: Vehiculos
CREATE TABLE Vehiculos (
    idVehiculo int NOT NULL,
    color varchar(10) NOT NULL,
    placa varchar(10) NOT NULL,
    precioVenta int NOT NULL,
    marca varchar(10) NOT NULL,
    modelo varchar(10) NOT NULL,
    CONSTRAINT Vehiculos_pk PRIMARY KEY (idVehiculo)
);

-- Table: compraXvehiculo
CREATE TABLE compraXvehiculo (
    idCompraXvehiculo int NOT NULL,
    idVehiculo int NOT NULL,
    idCompra int NOT NULL,
    Compras_idCompra int NOT NULL,
    Vehiculos_idVehiculo int NOT NULL,
    CONSTRAINT compraXvehiculo_pk PRIMARY KEY (idCompraXvehiculo)
);

-- Table: comprasXclientes
CREATE TABLE comprasXclientes (
    idComprasXClientes int NOT NULL,
    idCliente int NOT NULL,
    idCompra int NOT NULL,
    Clientes_idCliente int NOT NULL,
    Compras_idCompra int NOT NULL,
    CONSTRAINT comprasXclientes_pk PRIMARY KEY (idComprasXClientes)
);

-- Table: persoXconce
CREATE TABLE persoXconce (
    idPerXconce int NOT NULL,
    idConcesionario int NOT NULL,
    idPersona int NOT NULL,
    Concesionarios_idConcesionario int NOT NULL,
    Personas_idPersona int NOT NULL,
    CONSTRAINT persoXconce_pk PRIMARY KEY (idPerXconce)
);

-- Table: revisionesXvehiculo
CREATE TABLE revisionesXvehiculo (
    idReviXvehi int NOT NULL,
    idVehiculo int NOT NULL,
    idRevisiones int NOT NULL,
    numeroRevisiones int NOT NULL,
    valorRevision int NOT NULL,
    Vehiculos_idVehiculo int NOT NULL,
    Revisiones_idRevisiones int NOT NULL,
    CONSTRAINT revisionesXvehiculo_pk PRIMARY KEY (idReviXvehi)
);

-- Table: vehiculoXconcesionario
CREATE TABLE vehiculoXconcesionario (
    idAutoXConce int NOT NULL,
    idConcesionario int NOT NULL,
    idVehiculo int NOT NULL,
    Concesionarios_idConcesionario int NOT NULL,
    Vehiculos_idVehiculo int NOT NULL,
    CONSTRAINT vehiculoXconcesionario_pk PRIMARY KEY (idAutoXConce)
);

-- foreign keys
-- Reference: FK_AutoXconce_Conce (table: vehiculoXconcesionario)
ALTER TABLE vehiculoXconcesionario ADD CONSTRAINT FK_AutoXconce_Conce FOREIGN KEY FK_AutoXconce_Conce (Concesionarios_idConcesionario)
    REFERENCES Concesionarios (idConcesionario);

-- Reference: FK_AutoXconce_Vehi (table: vehiculoXconcesionario)
ALTER TABLE vehiculoXconcesionario ADD CONSTRAINT FK_AutoXconce_Vehi FOREIGN KEY FK_AutoXconce_Vehi (Vehiculos_idVehiculo)
    REFERENCES Vehiculos (idVehiculo);

-- Reference: FK_Client_TipPerson (table: Clientes)
ALTER TABLE Clientes ADD CONSTRAINT FK_Client_TipPerson FOREIGN KEY FK_Client_TipPerson (TipoPersona_idTipoPersona)
    REFERENCES TipoPersona (idTipoPersona);

-- Reference: FK_TipoPerXper_Per (table: TipoPersonaXpersona)
ALTER TABLE TipoPersonaXpersona ADD CONSTRAINT FK_TipoPerXper_Per FOREIGN KEY FK_TipoPerXper_Per (Personas_idPersona)
    REFERENCES Personas (idPersona);

-- Reference: FK_TipoPerXper_TipoPer (table: TipoPersonaXpersona)
ALTER TABLE TipoPersonaXpersona ADD CONSTRAINT FK_TipoPerXper_TipoPer FOREIGN KEY FK_TipoPerXper_TipoPer (TipoPersona_idTipoPersona)
    REFERENCES TipoPersona (idTipoPersona);

-- Reference: FK_compXAuto_Auto (table: compraXvehiculo)
ALTER TABLE compraXvehiculo ADD CONSTRAINT FK_compXAuto_Auto FOREIGN KEY FK_compXAuto_Auto (Vehiculos_idVehiculo)
    REFERENCES Vehiculos (idVehiculo);

-- Reference: FK_compXclient_Client (table: comprasXclientes)
ALTER TABLE comprasXclientes ADD CONSTRAINT FK_compXclient_Client FOREIGN KEY FK_compXclient_Client (Clientes_idCliente)
    REFERENCES Clientes (idCliente);

-- Reference: FK_compXclient_Comp (table: comprasXclientes)
ALTER TABLE comprasXclientes ADD CONSTRAINT FK_compXclient_Comp FOREIGN KEY FK_compXclient_Comp (Compras_idCompra)
    REFERENCES Compras (idCompra);

-- Reference: FK_compXvehi_Comp (table: compraXvehiculo)
ALTER TABLE compraXvehiculo ADD CONSTRAINT FK_compXvehi_Comp FOREIGN KEY FK_compXvehi_Comp (Compras_idCompra)
    REFERENCES Compras (idCompra);

-- Reference: FK_persoXconce_Conce (table: persoXconce)
ALTER TABLE persoXconce ADD CONSTRAINT FK_persoXconce_Conce FOREIGN KEY FK_persoXconce_Conce (Concesionarios_idConcesionario)
    REFERENCES Concesionarios (idConcesionario);

-- Reference: FK_persoXconce_Person (table: persoXconce)
ALTER TABLE persoXconce ADD CONSTRAINT FK_persoXconce_Person FOREIGN KEY FK_persoXconce_Person (Personas_idPersona)
    REFERENCES Personas (idPersona);

-- Reference: FK_reviXAuto_Revi (table: revisionesXvehiculo)
ALTER TABLE revisionesXvehiculo ADD CONSTRAINT FK_reviXAuto_Revi FOREIGN KEY FK_reviXAuto_Revi (Revisiones_idRevisiones)
    REFERENCES Revisiones (idRevisiones);

-- Reference: FK_reviXvehi_Vehi (table: revisionesXvehiculo)
ALTER TABLE revisionesXvehiculo ADD CONSTRAINT FK_reviXvehi_Vehi FOREIGN KEY FK_reviXvehi_Vehi (Vehiculos_idVehiculo)
    REFERENCES Vehiculos (idVehiculo);

-- End of file.


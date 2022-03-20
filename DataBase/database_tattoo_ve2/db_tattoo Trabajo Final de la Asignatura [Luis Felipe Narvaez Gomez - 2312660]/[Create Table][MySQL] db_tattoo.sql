-- Table: DetallesTicket
CREATE TABLE DetallesTicket (
    id_detalle_ticket int NOT NULL,
    descripcion varchar(100) NOT NULL    
);

-- Table: Horarios
CREATE TABLE Horarios (
    id_horario int NOT NULL,
    Lunes varchar(25) NOT NULL,
    Martes varchar(25) NOT NULL,
    Miercoles varchar(25) NOT NULL,
    jueves varchar(25) NOT NULL,
    Viernes varchar(25) NOT NULL,
    Sabado varchar(25) NOT NULL,
    Domingo varchar(25) NOT NULL
);

-- Table: Impuestos
CREATE TABLE Impuestos (
    id_impuesto int NOT NULL,
    nombre_impuesto varchar(25) NOT NULL,
    valor_impuesto decimal(11,2) NOT NULL
);

-- Table: Materiales
CREATE TABLE Materiales (
    id_material int NOT NULL,
    nombre varchar(25) NOT NULL,
    descripcion varchar(100) NOT NULL,
    FK_tipo_material int NOT NULL,
    FK_id_proveedor int NOT NULL
);

-- Table: Personas
CREATE TABLE Personas (
    id_persona int NOT NULL,
    nombre varchar(25) NOT NULL,
    apellido varchar(25) NOT NULL,
    edad int NOT NULL,
    dni_persona varchar(15) NOT NULL,
    pais_origen serial NOT NULL,
    fecha_nacimiento date NOT NULL,
    direccion varchar(30) NULL,
    descripcion varchar(100) NOT NULL,
    url varchar(50) NULL,
    telefono varchar(15) NULL,
    nit varchar(15) NULL,
    FK_tipo_persona int NOT NULL,
    FK_tienda_tattoo int NULL
);

-- Table: PreciosProductos
CREATE TABLE PreciosProductos (
    id_precio_producto int NOT NULL,
    descripcion_producto varchar(100) NOT NULL,
    feccha_precio date NOT NULL,
    precio_tattoo decimal(11,2) NOT NULL,
    precio_piercing decimal(11,2) NOT NULL,
    FK_impuesto int NOT NULL,
    FK_valor_impuesto int NOT NULL,
    precio_total decimal(11,2) NOT NULL
);

-- Table: Productos
CREATE TABLE Productos (
    id_producto int NOT NULL,
    nombre varchar(25) NOT NULL,
    descripcion varchar(100) NOT NULL,
    FK_tipo_producto int NOT NULL,
    FK_precio_producto int NOT NULL
);

-- Table: Tickets
CREATE TABLE Tickets (
    id_ticket int NOT NULL,
    medio_pago varchar(25) NOT NULL,
    fecha_ticket date NOT NULL,
    FK_id_cliente int NOT NULL,
    FK_detalle_ticket int NOT NULL,
    FK_precio_producto int NOT NULL
);

-- Table: TiendasTattoo
CREATE TABLE TiendasTattoo (
    id_tienda_tattoo int NOT NULL,
    nombre_tienda varchar(50) NOT NULL,
    direccion varchar(25) NOT NULL,
    telefono varchar(15) NULL,
    nit varchar(15) NOT NULL,
    departamento varchar(25) NOT NULL,
    ciudad varchar(25) NOT NULL,
    FK_horario int NOT NULL
);

-- Table: TiposMaterial
CREATE TABLE TiposMaterial (
    id_tipo_material int NOT NULL,
    nombre_tipo_material varchar(25) NOT NULL
);

-- Table: TiposPersona
CREATE TABLE TiposPersona (
    id_tipo_persona int NOT NULL,
    tipo_persona varchar(25) NOT NULL
);

-- Table: TiposProductos
CREATE TABLE TiposProductos (
    id_tipo_producto int NOT NULL,
    nombre_tipo_producto varchar(50) NOT NULL
);

-- Table: impuestoXproducto
CREATE TABLE impuestoXproducto (
    id_impXprodu int NOT NULL,
    id_precio_producto int NOT NULL,
    id_impuesto int NOT NULL
);

-- Table: personaXtipper
CREATE TABLE personaXtipper (
    id_personaXtipper int NOT NULL,
    id_persona int NOT NULL,
    id_tipo_persona int NOT NULL
);

-- Table: proveedorXmaterial
CREATE TABLE proveedorXmaterial (
    id_proveXmat int NOT NULL,
    id_material int NOT NULL,
    id_proveedor int NOT NULL
);

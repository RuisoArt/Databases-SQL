-- Table: DetallesTicket
ALTER TABLE DetallesTicket ADD CONSTRAINT DetallesTicket_pk PRIMARY KEY (id_detalle_ticket);

-- Table: Horarios
ALTER TABLE Horarios ADD CONSTRAINT Horarios_pk PRIMARY KEY (id_horario);

-- Table: Impuestos
ALTER TABLE Impuestos ADD CONSTRAINT Impuestos_pk PRIMARY KEY (id_impuesto);

-- Table: Materiales
ALTER TABLE Materiales ADD CONSTRAINT Materiales_pk PRIMARY KEY (id_material);

-- Table: Personas
ALTER TABLE Personas ADD CONSTRAINT Personas_pk PRIMARY KEY (id_persona);

-- Table: PreciosProductos
ALTER TABLE PreciosProductos ADD CONSTRAINT PreciosProductos_pk PRIMARY KEY (id_precio_producto);

-- Table: Productos
ALTER TABLE Productos ADD CONSTRAINT Productos_pk PRIMARY KEY (id_producto);

-- Table: Tickets
ALTER TABLE Tickets ADD CONSTRAINT Ticket_pk PRIMARY KEY (id_ticket);

-- Table: TiendasTattoo
ALTER TABLE TiendasTattoo ADD CONSTRAINT TiendasTattoo_pk PRIMARY KEY (id_tienda_tattoo);

-- Table: TiposMaterial
ALTER TABLE TiposMaterial ADD CONSTRAINT TiposMaterial_pk PRIMARY KEY (id_tipo_material);

-- Table: TiposPersona
ALTER TABLE TiposPersona ADD CONSTRAINT TiposPersona_pk PRIMARY KEY (id_tipo_persona);

-- Table: TiposProductos
ALTER TABLE TiposProductos ADD CONSTRAINT TiposProductos_pk PRIMARY KEY (id_tipo_producto);

-- Table: impuestoXproducto
ALTER TABLE impuestoXproducto ADD CONSTRAINT impuestoXproducto_pk PRIMARY KEY (id_impXprodu);

-- Table: personaXtipper
ALTER TABLE personaXtipper ADD CONSTRAINT personaXtipper_pk PRIMARY KEY (id_personaXtipper);

-- Table: proveedorXmaterial
ALTER TABLE proveedorXmaterial ADD CONSTRAINT proveedorXmaterial_pk PRIMARY KEY (id_proveXmat);

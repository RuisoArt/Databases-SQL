--TiendasTattoo ---------------------------------------------------------------------
ALTER TABLE TiendasTattoo ADD CONSTRAINT FK_Horario_TiendaTattoo
FOREIGN KEY FK_Horario_TiendaTattoo (FK_horario)
REFERENCES Horarios (id_horario)
ON DELETE CASCADE
ON UPDATE CASCADE;

--Personas ---------------------------------------------------------------------
	ALTER TABLE Personas ADD CONSTRAINT FK_TiendaTattoo_Persona
	FOREIGN KEY FK_TiendaTattoo_Persona (FK_tienda_tattoo)
	REFERENCES TiendasTattoo (id_tienda_tattoo)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE Personas DROP FOREIGN KEY FK_TiendaTattoo_Persona;

ALTER TABLE Personas ADD CONSTRAINT FK_TipoPersona_Persona
FOREIGN KEY FK_TipoPersona_Persona (FK_tipo_persona)
REFERENCES TiposPersona (id_tipo_persona)
ON DELETE CASCADE
ON UPDATE CASCADE;

--Materiales ---------------------------------------------------------------------
ALTER TABLE Materiales ADD CONSTRAINT FK_Proveedor_Material
FOREIGN KEY FK_Proveedor_Material (FK_id_proveedor)
REFERENCES Personas (id_persona)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Materiales ADD CONSTRAINT FK_TipoMaterial_Material
FOREIGN KEY FK_TipoMaterial_Material (FK_tipo_material)
REFERENCES TiposMaterial (id_tipo_material)
ON DELETE CASCADE
ON UPDATE CASCADE;

--proveedorXmaterial ---------------------------------------------------------------------
ALTER TABLE proveedorXmaterial ADD CONSTRAINT FK_Material_ProveXMate
FOREIGN KEY FK_Material_ProveXMate (id_material)
REFERENCES Materiales (id_material)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE proveedorXmaterial ADD CONSTRAINT FK_Proveedor_ProveXMate
FOREIGN KEY FK_Proveedor_ProveXMate (id_proveedor)
REFERENCES Personas (id_persona)
ON DELETE CASCADE
ON UPDATE CASCADE;

--Productos ---------------------------------------------------------------------
ALTER TABLE Productos ADD CONSTRAINT FK_TipoProducto_Producto
FOREIGN KEY FK_TipoProducto_Producto (FK_tipo_producto)
REFERENCES TiposProductos (id_tipo_producto)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Productos ADD CONSTRAINT FK_PrecioProducto_Producto
FOREIGN KEY FK_PrecioProducto_Producto (FK_precio_producto)
REFERENCES PreciosProductos (id_precio_producto)
ON DELETE CASCADE
ON UPDATE CASCADE;

--PreciosProductos ---------------------------------------------------------------------
	ALTER TABLE PreciosProductos ADD CONSTRAINT FK_Impuesto_PrecioProducto
	FOREIGN KEY FK_impXprofu_Valor (FK_valor_impuesto)
	REFERENCES Impuestos (valor_impuesto)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE PreciosProductos ADD CONSTRAINT FK_impXprofu_Impuesto
FOREIGN KEY FK_impXprofu_Impuesto (FK_impuesto)
REFERENCES Impuestos (id_impuesto)
ON DELETE CASCADE
ON UPDATE CASCADE;

--impuestoXproducto ---------------------------------------------------------------------
ALTER TABLE impuestoXproducto ADD CONSTRAINT FK_PrecioProducto_impXprodu
FOREIGN KEY FK_PrecioProducto_impXprodu (id_precio_producto)
REFERENCES PreciosProductos (id_precio_producto)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE impuestoXproducto ADD CONSTRAINT FK_Impuesto_impXprodu
FOREIGN KEY FK_Impuesto_impXprodu (id_impuesto)
REFERENCES Impuestos (id_impuesto)
ON DELETE CASCADE
ON UPDATE CASCADE;

--Tickets ---------------------------------------------------------------------
ALTER TABLE Tickets ADD CONSTRAINT FK_Cliente_Ticket
FOREIGN KEY FK_Cliente_Ticket (FK_id_cliente)
REFERENCES Personas (id_persona)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Tickets ADD CONSTRAINT FK_DetalleTicket_Ticket
FOREIGN KEY FK_DetalleTicket_Ticket (FK_detalle_ticket)
REFERENCES DetallesTicket (id_detalle_ticket)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Tickets ADD CONSTRAINT FK_Precio_Ticket
FOREIGN KEY FK_Precio_Ticket (FK_precio_producto)
REFERENCES PreciosProductos (id_precio_producto)
ON DELETE CASCADE
ON UPDATE CASCADE;

--personaXtipper ---------------------------------------------------------------------
ALTER TABLE personaXtipper ADD CONSTRAINT FK_Persona_perXtipper
FOREIGN KEY FK_Persona_perXtipper (id_persona)
REFERENCES Personas (id_persona)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE personaXtipper ADD CONSTRAINT FK_TipoPersona_perXtipper
FOREIGN KEY FK_TipoPersona_perXtipper (id_tipo_persona)
REFERENCES TiposPersona (id_tipo_persona)
ON DELETE CASCADE
ON UPDATE CASCADE;
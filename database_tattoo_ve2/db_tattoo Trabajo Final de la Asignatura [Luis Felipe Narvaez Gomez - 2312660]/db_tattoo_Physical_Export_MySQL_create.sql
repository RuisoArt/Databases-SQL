
-- foreign keys
-- Reference: FK_Tattoo_Persona (table: Personas)
ALTER TABLE Personas ADD CONSTRAINT FK_Tattoo_Persona 
FOREIGN KEY FK_Tattoo_Persona (TiendasTattoo_id_tienda_tattoo)
REFERENCES TiendasTattoo (id_tienda_tattoo)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- Reference: FK_Ticket_Personas (table: Ticket)
ALTER TABLE Ticket ADD CONSTRAINT FK_Ticket_Personas FOREIGN KEY FK_Ticket_Personas (Personas_id_persona)
    REFERENCES Personas (id_persona);

-- Reference: FK_detaltic_tic (table: DetallesTicket)
ALTER TABLE DetallesTicket ADD CONSTRAINT FK_detaltic_tic FOREIGN KEY FK_detaltic_tic (Ticket_id_ticket)
    REFERENCES Ticket (id_ticket);

-- Reference: FK_hora_tiendatattoo (table: Horarios)
ALTER TABLE Horarios ADD CONSTRAINT FK_hora_tiendatattoo FOREIGN KEY FK_hora_tiendatattoo (TiendasTattoo_id_tienda_tattoo)
    REFERENCES TiendasTattoo (id_tienda_tattoo);

-- Reference: FK_impXprodu_detatic (table: impuestoXproducto)
ALTER TABLE impuestoXproducto ADD CONSTRAINT FK_impXprodu_detatic FOREIGN KEY FK_impXprodu_detatic (DetallesTicket_id_detalle_ticket)
    REFERENCES DetallesTicket (id_detalle_ticket);

-- Reference: FK_impXprodu_imp (table: impuestoXproducto)
ALTER TABLE impuestoXproducto ADD CONSTRAINT FK_impXprodu_imp FOREIGN KEY FK_impXprodu_imp (Impuestos_id_impuesto)
    REFERENCES Impuestos (id_impuesto);

-- Reference: FK_impXprodu_preprodu (table: impuestoXproducto)
ALTER TABLE impuestoXproducto ADD CONSTRAINT FK_impXprodu_preprodu FOREIGN KEY FK_impXprodu_preprodu (PreciosProductos_id_precio_producto)
    REFERENCES PreciosProductos (id_precio_producto);

-- Reference: FK_perXtiper_tiper (table: personaXtipper)
ALTER TABLE personaXtipper ADD CONSTRAINT FK_perXtiper_tiper FOREIGN KEY FK_perXtiper_tiper (TiposPersona_id_tipo_persona)
    REFERENCES TiposPersona (id_tipo_persona);

-- Reference: FK_per_perXtiper (table: personaXtipper)
ALTER TABLE personaXtipper ADD CONSTRAINT FK_per_perXtiper FOREIGN KEY FK_per_perXtiper (Personas_id_persona)
    REFERENCES Personas (id_persona);

-- Reference: FK_preprodu_produ (table: PreciosProductos)
ALTER TABLE PreciosProductos ADD CONSTRAINT FK_preprodu_produ FOREIGN KEY FK_preprodu_produ (Productos_id_producto)
    REFERENCES Productos (id_producto);

-- Reference: FK_produ_tattoo (table: Productos)
ALTER TABLE Productos ADD CONSTRAINT FK_produ_tattoo FOREIGN KEY FK_produ_tattoo (TiendasTattoo_id_tienda_tattoo)
    REFERENCES TiendasTattoo (id_tienda_tattoo);

-- Reference: FK_produ_tipprodu (table: Productos)
ALTER TABLE Productos ADD CONSTRAINT FK_produ_tipprodu FOREIGN KEY FK_produ_tipprodu (TiposProductos_id_tipo_producto)
    REFERENCES TiposProductos (id_tipo_producto);

-- Reference: FK_proveXmat_mat (table: proveedorXmaterial)
ALTER TABLE proveedorXmaterial ADD CONSTRAINT FK_proveXmat_mat FOREIGN KEY FK_proveXmat_mat (Materiales_id_material)
    REFERENCES Materiales (id_material);

-- Reference: FK_proveXmat_per (table: proveedorXmaterial)
ALTER TABLE proveedorXmaterial ADD CONSTRAINT FK_proveXmat_per FOREIGN KEY FK_proveXmat_per (Personas_id_persona)
    REFERENCES Personas (id_persona);

-- Reference: FK_tipmat_mat (table: TiposMaterial)
ALTER TABLE TiposMaterial ADD CONSTRAINT FK_tipmat_mat FOREIGN KEY FK_tipmat_mat (Materiales_id_material)
    REFERENCES Materiales (id_material);

-- End of file.


--PreciosProductos
Delimeter //
CREATE TRIGGER calc_precio_total BEFORE INSERT ON PreciosProductos
FOR EACH ROW
BEGIN
SET new.precio_total = (new.precio_tattoo + new.precio_piercing) + ((new.precio_tattoo + new.precio_piercing)*new.FK_valor_impuesto);
END;
//
Delimeter ;

--Personas
Delimeter //
CREATE TRIGGER cal_edad BEFORE INSERT ON Personas
FOR EACH ROW
BEGIN
SET new.edad = TIMESTAMPDIFF(YEAR,new.fecha_nacimiento,CURDATE());
END;
//
Delimeter ;
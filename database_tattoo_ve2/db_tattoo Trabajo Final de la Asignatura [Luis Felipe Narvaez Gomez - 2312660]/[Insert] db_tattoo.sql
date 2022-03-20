
-- Table: DetallesTicket ------------- [YA]
INSERT INTO DetallesTicket (id_detalle_ticket,descripcion) VALUES
(1,'Una secion'),
(2,'Varias sesiones'),
(3,'Retoque de linea'),
(4,'Retoque de color'),
(5,'Relleno de color'),
(6,'Cubrimiento por otro diseño'),
(7,'Una perforacion'),
(8,'Varias perforaciones');

-- Table: Horarios ------------- [YA]
INSERT INTO Horarios (id_horario,Lunes,Martes,Miercoles,jueves,Viernes,Sabado,Domingo) VALUES
(1,'09:00 a 20:30','09:00 a 20:30','09:00 a 20:30','09:00 a 20:30','09:00 a 20:30','09:00 a 20:30','Cerrado'),
(2,'10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','11:00 a 14:30'),
(3,'10:00 a 19:00','10:00 a 19:00','10:00 a 19:00','10:00 a 19:00','10:00 a 19:00','10:00 a 19:00','Cerrado'),
(4,'09:00 a 21:00','09:00 a 21:00','09:00 a 21:00','09:00 a 21:00','09:00 a 21:00','09:00 a 21:00','08:00 a 18:00'),
(5,'10:00 a 20:30','10:00 a 20:30','10:00 a 20:30','10:00 a 20:30','10:00 a 20:30','10:00 a 20:30','11:00 a 20:30'),
(6,'09:00 a 18:00','09:00 a 18:00','09:00 a 18:00','09:00 a 18:00','09:00 a 18:00','Cerrado','Cerrado'),
(7,'09:00 a 19:00','09:00 a 19:00','09:00 a 19:00','09:00 a 19:00','09:00 a 19:00','09:00 a 19:00','Cerrado'),
(8,'14:00 a 20:00','14:00 a 20:00','14:00 a 20:00','14:00 a 20:00','14:00 a 20:00','14:00 a 20:00','Cerrado'),
(9,'Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario'),
(10,'Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario'),
(11,'10:00 a 20:00','10:00 a 20:00','10:00 a 20:00','10:00 a 20:00','10:00 a 20:00','10:00 a 20:00','Cerrado'),
(12,'09:00 a 18:00','09:00 a 18:00','09:00 a 18:00','09:00 a 18:00','09:00 a 18:00','09:00 a 18:00','Cerrado'),
(13,'11:00 a 20:00','11:00 a 20:00','11:00 a 20:00','11:00 a 20:00','11:00 a 20:00','11:00 a 20:00','11:00 a 20:00'),
(14,'Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario'),
(15,'09:00 a 20:00','09:00 a 20:00','09:00 a 20:00','09:00 a 20:00','09:00 a 20:00','09:00 a 20:00','09:00 a 20:00'),
(16,'09:30 a 18:00','09:30 a 18:00','09:30 a 18:00','09:30 a 18:00','09:30 a 18:00','09:30 a 18:00','Cerrado'),
(17,'10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','Cerrado'),
(18,'09:00  a 19:00','09:00  a 19:00','09:00  a 19:00','09:00  a 19:00','09:00  a 19:00','09:00  a 19:00','09:00 a 17:00'),
(19,'Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario'),
(20,'Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario'),
(21,'10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','10:00 a 19:30','Cerrado'),
(22,'05:00 a 19:00','05:00 a 19:00','05:00 a 19:00','05:00 a 19:00','05:00 a 19:00','05:00 a 19:00','Cerrado'),
(23,'Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario','Sin horario');


-- Table: Impuestos ------------- [YA]
INSERT INTO Impuestos (id_impuesto,nombre_impuesto,valor_impuesto) VALUES
(1,'Renta y Ganancia Ocasional y Dividendos (Impuesto Renta)',0.31),
(2,'Renta y Ganancia Ocasional y Dividendos (Ganancia Ocacional)',0.1),
(3,'Impuesto al Valor Agregado (IVA)(0)',0),
(4,'Impuesto al Valor Agregado (IVA)(5)',0.05),
(5,'Impuesto al Valor Agregado (IVA)(15)',0.15),
(6,'Impuesto al Valor Agregado (IVA)(19)',0.19),
(7,'Impuesto al consumo (2)',0.02),
(8,'Impuesto al consumo (4)',0.04),
(9,'Impuesto al consumo (8)',0.08),
(10,'Impuesto al consumo (16)',0.16),
(11,'Impuesto a las Transacciones Financieras',0.004),
(12,'Impuesto de Industria y Comercio (0 2)',0.002),
(13,'Impuesto de Industria y Comercio (1 4)',0.014),
(14,'Impuesto Predial (0 5)',0.005),
(15,'Impuesto Predial (1 6)',0.016),
(16,'arancel precio FOB inferior a 10$us por kilo',0.4),
(17,'arancel importaciones Aduanas inferior a 20$us por kilo',0.379),
(18,'arancel adicional Aduanas superior a 3$us por kilo',0.1),
(19,'arancel adicional Importaciones',0.15),
(20,'Zonas francas',0.15),
(21,'Impuesto por feo',0.1),
(22,'Impuesto por existir',0.1);

-- Table: Materiales ------------- [YA]
	INSERT INTO Materiales (id_material,nombre,descripcion,FK_tipo_material,FK_id_proveedor) VALUES
	(1,'tinta para tatuaje tipo 1','Enbase de 500ml de tinta tipo 1',1,8),
	(2,'tinta para tatuaje tipo 2','Enbase de 500ml de tinta tipo 2',1,9),
	(3,'tinta para tatuaje tipo 3','Enbase de 500ml de tinta tipo 3',1,10),
	(4,'tinta para tatuaje tipo 4','Enbase de 500ml de tinta tipo 4',1,11),
	(5,'tinta para tatuaje tipo 5','Enbase de 500ml de tinta tipo 5',1,12),
	(6,'tinta para tatuaje tipo 6','Enbase de 500ml de tinta tipo 6',1,13),
	(7,'tinta para tatuaje tipo 7','Enbase de 500ml de tinta tipo 7',1,14),
	(8,'tinta para tatuaje tipo 8','Enbase de 500ml de tinta tipo 8',1,8),
	(9,'tinta para tatuaje tipo 9','Enbase de 500ml de tinta tipo 9',1,9),
	(10,'tinta para tatuaje tipo 10','Enbase de 500ml de tinta tipo 10',1,10),
	(11,'tinta para tatuaje tipo 11','Enbase de 500ml de tinta tipo 11',1,11),
	(12,'tinta para tatuaje tipo 12','Enbase de 500ml de tinta tipo 12',1,12),
	(13,'tinta para tatuaje tipo 13','Enbase de 500ml de tinta tipo 13',1,13),
	(14,'tinta para tatuaje tipo 14','Enbase de 500ml de tinta tipo 14',1,14),
	(15,'tinta para tatuaje tipo 15','Enbase de 500ml de tinta tipo 15',1,8),
	(16,'tinta para tatuaje tipo 16','Enbase de 500ml de tinta tipo 16',1,9),
	(17,'tinta para tatuaje tipo 17','Enbase de 500ml de tinta tipo 17',1,10),
	(18,'marcadores negro','marcador negro borrable  se enciman hojas carbon',2,11),
	(19,'marcador permanente rojo','marcador permanente Sharpie Rojo',2,12),
	(20,'algodón aceptico','elementos de desinfeccion y limpieza',3,13),
	(21,'alcohol aceptico','elementos de desinfeccion y limpieza',4,14),
	(22,'guantes de latex negro','elemento de trabajo medico de tatuaje y piercing',5,8),
	(23,'guantes de nitrilo negro','elemento de trabajo medico de tatuaje y piercing',6,9),
	(24,'toallas','elementos de desinfeccion y limpieza',7,10),
	(25,'papel higienico','elementos de desinfeccion y limpieza',8,11),
	(26,'pinzas perforadoras de piercing','elemento de trabajo medico de tatuaje y piercing',9,12),
	(27,'Maquinda electrica de tatuajes','elemento de trabajo medico de tatuaje y piercing',10,13),
	(28,'agujas para tatuar','elemento de trabajo medico de tatuaje y piercing',11,14),
	(29,'jeringas','elemento de trabajo medico de tatuaje y piercing',12,8),
	(30,'agujas de jeringas','elemento de trabajo medico de tatuaje y piercing',13,9),
	(31,'Autoclave','elementos de desinfeccion y limpieza de elementos de trabajo',14,10),
	(32,'Ungüento ','elementos de desinfeccion y limpieza',15,11),
	(33,'vendaje','elementos de desinfeccion y limpieza',16,12),
	(34,'gasas','elementos de desinfeccion y limpieza',17,13),
	(35,'espuma limpiadora','elementos de desinfeccion y limpieza de elementos de trabajo',18,14),
	(36,'toallas de papel absorvente','elementos de desinfeccion y limpieza',19,8),
	(37,'velas aromatizantes','para la harmonia del cliente y trabajadores',20,9),
	(38,'humificador','para la harmonia del cliente y trabajadores',21,10),
	(39,'camilla de tatuaje','indispensable camilla de color negro  acolchado en cuerina y base en acero inoxidable',22,11),
	(40,'plastico Vinipel Rollo','para vendaje del tattoo',23,12),
	(41,'cremas hidratantes','para venta del cuidado del tattoo',24,13);

-- Table: Personas ------------- [YA]
INSERT INTO Personas (id_persona,nombre,apellido,edad,dni_persona,pais_origen,fecha_nacimiento,direccion,descripcion,url,telefono,nit,FK_tipo_persona,FK_tienda_tattoo) VALUES
('1','Cliente Nombre 01','Cliente Apellido 01','','1049651','Colombia','1929/06/19','','Este es un cliente 01','','7201234561','','1',''),
('2','Cliente Nombre 02','Cliente Apellido 02','','1049652','Colombia','1911/01/2','','Este es un cliente 02','','7201234562','','1',''),
('3','Cliente Nombre 03','Cliente Apellido 03','','1049653','Colombia','1935/04/7','','Este es un cliente 03','','7201234563','','1',''),
('4','Cliente Nombre 04','Cliente Apellido 04','','1049654','Colombia','1916/11/3','','Este es un cliente 04','','7201234564','','1',''),
('5','Cliente Nombre 05','Cliente Apellido 05','','1049655','Colombia','1912/05/12','','Este es un cliente 05','','7201234565','','1',''),
('6','Cliente Nombre 06','Cliente Apellido 06','','1049656','Colombia','1919/04/18','','Este es un cliente 06','','7201234566','','1',''),
('7','Cliente Nombre 07','Cliente Apellido 07','','1049657','Colombia','1906/08/21','','Este es un cliente 07','','7201234567','','1',''),
('8','Proveedor Nombre 01','Proveedor Apellido 01','','1049658','USA','1910/11/9','Calle Fin del Mundo via 01','Este es un proveedor 01','esteestuproveedoroficial01@mail.com','7201234568','P-123456789','2',''),
('9','Proveedor Nombre 02','Proveedor Apellido 02','','1049659','USA','1915/01/5','Calle Fin del Mundo via 02','Este es un proveedor 02','esteestuproveedoroficial02@mail.com','7201234569','P-123456790','2',''),
('10','Proveedor Nombre 03','Proveedor Apellido 03','','1049660','USA','1910/11/13','Calle Fin del Mundo via 03','Este es un proveedor 03','esteestuproveedoroficial03@mail.com','7201234570','P-123456791','2',''),
('11','Proveedor Nombre 04','Proveedor Apellido 04','','1049661','USA','1923/06/9','Calle Fin del Mundo via 04','Este es un proveedor 04','esteestuproveedoroficial04@mail.com','7201234571','P-123456792','2',''),
('12','Proveedor Nombre 05','Proveedor Apellido 05','','1049662','USA','1915/04/20','Calle Fin del Mundo via 05','Este es un proveedor 05','esteestuproveedoroficial05@mail.com','7201234572','P-123456793','2',''),
('13','Proveedor Nombre 06','Proveedor Apellido 06','','1049663','USA','1934/08/7','Calle Fin del Mundo via 06','Este es un proveedor 06','esteestuproveedoroficial06@mail.com','7201234573','P-123456794','2',''),
('14','Proveedor Nombre 07','Proveedor Apellido 07','','1049664','USA','1924/06/20','Calle Fin del Mundo via 07','Este es un proveedor 07','esteestuproveedoroficial07@mail.com','7201234574','P-123456795','2',''),
('15','Tatuador Nombre 01','Tatuador Apellido 01','','1049665','Colombia','1906/07/8','Cl. 29 ##10a-1','Este es un artista 01','https://www.instagram.com/tattootunja_saloonprive/?r=nametag','311 5287058','123.456.789-D','3','4'),
('16','Tatuador Nombre 02','Tatuador Apellido 02','','1049666','Colombia','1925/07/13','Cl. 18 ##12 -37','Este es un artista 02','https://www.instagram.com/dntatuajeria/','310 8843180','123.456.789-H','3','8'),
('17','Tatuador Nombre 03','Tatuador Apellido 03','','1049667','Colombia','1910/04/18','Cl. 18 ##12 -37','Este es un artista 03','https://www.instagram.com/cry_in_ink_tattoo/','310 8843180','123.456.789-H','3','8'),
('18','Tatuador Nombre 04','Tatuador Apellido 04','','1049668','Colombia','1929/03/17','Cl. 18 ##12 -37','Este es un artista 04','https://www.instagram.com/zata.6/','310 8843180','123.456.789-H','3','8'),
('19','Tatuador Nombre 05','Tatuador Apellido 05','','1049669','Colombia','1914/12/9','Cl. 18 ##12 -37','Este es un artista 05','https://www.instagram.com/afterinked/','310 8843180','123.456.789-H','3','8'),
('20','Tatuador Nombre 06','Tatuador Apellido 06','','1049670','Colombia','1907/12/9','Cl. 18 ##12 -37','Este es un artista 06','https://www.instagram.com/cacattoo/','310 8843180','123.456.789-H','3','8'),
('21','Tatuador Nombre 07','Tatuador Apellido 07','','1049671','Colombia','1914/11/8','Cl. 18 ##12 -37','Este es un artista 07','https://www.instagram.com/piso_3_xtreme_shop_tunja/','310 8843180','123.456.789-H','3','8'),
('22','Tatuador Nombre 08','Tatuador Apellido 08','','1049672','Colombia','1922/10/10','Cl. 18 ##12 -37','Este es un artista 08','https://www.instagram.com/santiagosaenzh/','310 8843180','123.456.789-H','3','8'),
('23','Tatuador Nombre 09','Tatuador Apellido 09','','1049673','Colombia','1926/07/15',' CC Boulevard  Av. Olímpica #3 - 76 Local 204','Este es un artista 09','https://www.instagram.com/soulart_tattoo_studio/?utm_medium=copy_link','320 9015810','123.456.789-M','3','13'),
('24','Tatuador Nombre 10','Tatuador Apellido 10','','1049674','Colombia','1923/07/21','Prívate Studio  Cl. 47A ##6-27','Este es un artista 10','https://www.instagram.com/leontatuador/','321 9002374','123.456.789-A','3','1'),
('25','Perforador Nombre 01','Perforador Apellido 01','','1049675','Colombia','1922/03/11','Cl. 17 ##13 -42 local 3','Este es un artista 11','https://www.instagram.com/ferchoneva/?hl=es-la','310 2791926','123.456.789-T','4','20'),
('26','Perforador Nombre 02','Perforador Apellido 02','','1049676','Colombia','1907/08/10','Cl. 17 ##13 -42 local 3','Este es un artista 12','https://www.instagram.com/jumaa_official/','310 2791926','123.456.789-T','4','20'),
('27','Perforador Nombre 03','Perforador Apellido 03','','1049677','Colombia','1919/10/5','Cl. 17 ##13 -42 local 3','Este es un artista 13','https://www.instagram.com/santamafia_tattoo/','310 2791926','123.456.789-T','4','20'),
('28','Perforador Nombre 04','Perforador Apellido 04','','1049678','Colombia','1908/06/2','RESTAURATE LA ROMANA D.C  Cra. 9 ##20','Este es un artista 14','https://www.instagram.com/skinink.tat/','316 5152020','123.456.789-C','4','3'),
('29','Perforador Nombre 05','Perforador Apellido 05','','1049679','Colombia','1915/04/23','Cl. 22 ## 9-44 local 214','Este es un artista 15','https://www.instagram.com/fernandotorres_tattoo/?utm_medium=copy_link','310 4787465','123.456.789-k','4','11'),
('30','Perforador Nombre 06','Perforador Apellido 06','','1049680','Colombia','1927/08/10',' A dos cuadras de la iglesia  Cra. 10 ##28','Este es un artista 16','https://www.instagram.com/donovan_tattoos/','311 2939361','123.456.789-E','4','5'),
('31','Perforador Nombre 07','Perforador Apellido 07','','1049681','Colombia','1927/05/20','estudio privado','Este es un artista 17','https://www.instagram.com/mauravel1/?utm_medium=copy_link','3022600012','123.456.789-W','4','23'),
('32','Perforador Nombre 08','Perforador Apellido 08','','1049682','Colombia','1908/01/5','estudio privado','Este es un artista 18','https://www.instagram.com/alex_raven6/?utm_medium=copy_link','3156899355','123.456.789-Y','4','24'),
('33','Perforador Nombre 09','Perforador Apellido 09','','1049683','Colombia','1913/08/15','estudio privado','Este es un artista 19','https://www.instagram.com/nixon.betancourt/?utm_medium=copy_link','0','123.456.789-Z','4','25'),
('34','Perforador Nombre 10','Perforador Apellido 10','','1049684','Colombia','1933/01/17',' Cl. 39 ##6 - 32','Este es un artista 20','https://www.instagram.com/leonardo.medito/','301 2325570','123.456.789-N','4','14'),
('35','Perforador Nombre 11','Perforador Apellido 11','','1049685','Colombia','1913/06/13','Carrera 12 14 03 B. Nueva Santa Barbara','Este es un artista 21','https://www.instagram.com/willyzararte/?r=nametag','300 4117121','123.456.789-Q','4','17'),
('36','Admin Nombre 01','Admin Apellido 01','','1049686','Colombia','1925/10/19','Paseo De La Salamandra','Este es admin 01','','7201234574','','5','18'),
('37','Admin Nombre 02','Admin Apellido 02','','1049687','Colombia','1932/04/18','Cl. 17 ##13 -42 local 3','Este es admin 02','','7201234575','','5','20'),
('38','Admin Nombre 03','Admin Apellido 03','','1049688','Colombia','1911/10/2','No presenta','Este es admin 03','','7201234576','','5','22'),
('39','Admin Nombre 04','Admin Apellido 04','','1049689','Colombia','1925/06/10','estudio privado','Este es admin 04','','7201234577','','5','24'),
('40','Admin Nombre 05','Admin Apellido 05','','1049690','Colombia','1922/03/10','Prívate Studio  Cl. 47A ##6-27','Este es admin 05','','7201234578','','5','1'),
('41','Admin Nombre 06','Admin Apellido 06','','1049691','Colombia','1916/05/2','RESTAURATE LA ROMANA D.C  Cra. 9 ##20','Este es admin 06','','7201234579','','5','3'),
('42','Admin Nombre 07','Admin Apellido 07','','1049692','Colombia','1915/04/13','Cl. 29 ##10a-1','Este es admin 07','','7201234580','','5','4'),
('43','Dibujante Nombre 01','Dibujante Apellido 01','','1049693','Colombia','1916/07/15','Cra. 22 # 9- 44 Centro Comercial Paseo de la Salamandra','Este es un artista dibujante 01','https://www.instagram.com/explore/','7201234581','','6','2'),
('44','Dibujante Nombre 02','Dibujante Apellido 02','','1049694','Colombia','1921/11/21',' Tv 7 No.44-39  Local 2  Santa Ines','Este es un artista dibujante 02','https://www.instagram.com/explore/','7201234582','','6','6'),
('45','Dibujante Nombre 03','Dibujante Apellido 03','','1049695','Colombia','1908/11/14','Cl. 18 ##12 -37','Este es un artista dibujante 03','https://www.instagram.com/explore/','7201234583','','6','8'),
('46','Dibujante Nombre 04','Dibujante Apellido 04','','1049696','Colombia','1911/04/22','Tv. 0 Este ##66a 20','Este es un artista dibujante 04','https://www.instagram.com/explore/','7201234584','','6','10'),
('47','Dibujante Nombre 05','Dibujante Apellido 05','','1049697','Colombia','1908/09/18','150003','Este es un artista dibujante 05','https://www.instagram.com/explore/','7201234585','','6','12'),
('48','Dibujante Nombre 06','Dibujante Apellido 06','','1049698','Colombia','1917/07/22',' Cl. 39 ##6 - 32','Este es un artista dibujante 06','https://www.instagram.com/explore/','7201234586','','6','14'),
('49','Dibujante Nombre 07','Dibujante Apellido 07','','1049699','Colombia','1932/12/6','Carrera 10 # 20 - 91 El Virrey Centro Comercial Local 219','Este es un artista dibujante 07','https://www.instagram.com/explore/','7201234587','','6','16');

UPDATE Personas SET fecha_nacimiento = '1929/06/19' WHERE id_persona = 1;
UPDATE Personas SET fecha_nacimiento = '1929/06/19' WHERE id_persona = 2;
UPDATE Personas SET fecha_nacimiento = '1911/01/2' WHERE id_persona = 3;
UPDATE Personas SET fecha_nacimiento = '1935/04/7' WHERE id_persona = 4;
UPDATE Personas SET fecha_nacimiento = '1916/11/3' WHERE id_persona = 5;
UPDATE Personas SET fecha_nacimiento = '1912/05/12' WHERE id_persona = 6;
UPDATE Personas SET fecha_nacimiento = '1919/04/18' WHERE id_persona = 7;
UPDATE Personas SET fecha_nacimiento = '1906/08/21' WHERE id_persona = 8;
UPDATE Personas SET fecha_nacimiento = '1910/11/9' WHERE id_persona = 9;
UPDATE Personas SET fecha_nacimiento = '1915/01/5' WHERE id_persona = 10;
UPDATE Personas SET fecha_nacimiento = '1910/11/13' WHERE id_persona = 11;
UPDATE Personas SET fecha_nacimiento = '1923/06/9' WHERE id_persona = 12;
UPDATE Personas SET fecha_nacimiento = '1915/04/20' WHERE id_persona = 13;
UPDATE Personas SET fecha_nacimiento = '1934/08/7' WHERE id_persona = 14;
UPDATE Personas SET fecha_nacimiento = '1924/06/20' WHERE id_persona = 15;
UPDATE Personas SET fecha_nacimiento = '1906/07/8' WHERE id_persona = 16;
UPDATE Personas SET fecha_nacimiento = '1925/07/13' WHERE id_persona = 17;
UPDATE Personas SET fecha_nacimiento = '1910/04/18' WHERE id_persona = 18;
UPDATE Personas SET fecha_nacimiento = '1929/03/17' WHERE id_persona = 19;
UPDATE Personas SET fecha_nacimiento = '1914/12/9' WHERE id_persona = 20;
UPDATE Personas SET fecha_nacimiento = '1907/12/9' WHERE id_persona = 21;
UPDATE Personas SET fecha_nacimiento = '1914/11/8' WHERE id_persona = 22;
UPDATE Personas SET fecha_nacimiento = '1922/10/10' WHERE id_persona = 23;
UPDATE Personas SET fecha_nacimiento = '1926/07/15' WHERE id_persona = 24;
UPDATE Personas SET fecha_nacimiento = '1923/07/21' WHERE id_persona = 25;
UPDATE Personas SET fecha_nacimiento = '1922/03/11' WHERE id_persona = 26;
UPDATE Personas SET fecha_nacimiento = '1907/08/10' WHERE id_persona = 27;
UPDATE Personas SET fecha_nacimiento = '1919/10/5' WHERE id_persona = 28;
UPDATE Personas SET fecha_nacimiento = '1908/06/2' WHERE id_persona = 29;
UPDATE Personas SET fecha_nacimiento = '1915/04/23' WHERE id_persona = 30;
UPDATE Personas SET fecha_nacimiento = '1927/08/10' WHERE id_persona = 31;
UPDATE Personas SET fecha_nacimiento = '1927/05/20' WHERE id_persona = 32;
UPDATE Personas SET fecha_nacimiento = '1908/01/5' WHERE id_persona = 33;
UPDATE Personas SET fecha_nacimiento = '1913/08/15' WHERE id_persona = 34;
UPDATE Personas SET fecha_nacimiento = '1933/01/17' WHERE id_persona = 35;
UPDATE Personas SET fecha_nacimiento = '1913/06/13' WHERE id_persona = 36;
UPDATE Personas SET fecha_nacimiento = '1925/10/19' WHERE id_persona = 37;
UPDATE Personas SET fecha_nacimiento = '1932/04/18' WHERE id_persona = 38;
UPDATE Personas SET fecha_nacimiento = '1911/10/2' WHERE id_persona = 39;
UPDATE Personas SET fecha_nacimiento = '1925/06/10' WHERE id_persona = 40;
UPDATE Personas SET fecha_nacimiento = '1922/03/10' WHERE id_persona = 41;
UPDATE Personas SET fecha_nacimiento = '1916/05/2' WHERE id_persona = 42;
UPDATE Personas SET fecha_nacimiento = '1915/04/13' WHERE id_persona = 43;
UPDATE Personas SET fecha_nacimiento = '1916/07/15' WHERE id_persona = 44;
UPDATE Personas SET fecha_nacimiento = '1921/11/21' WHERE id_persona = 45;
UPDATE Personas SET fecha_nacimiento = '1908/11/14' WHERE id_persona = 46;
UPDATE Personas SET fecha_nacimiento = '1911/04/22' WHERE id_persona = 47;
UPDATE Personas SET fecha_nacimiento = '1908/09/18' WHERE id_persona = 48;
UPDATE Personas SET fecha_nacimiento = '1917/07/22' WHERE id_persona = 49;

-- Table: PreciosProductos  ------------- [YA]
INSERT INTO PreciosProductos (id_precio_producto, descripcion_producto, feccha_precio, precio_tattoo, precio_piercing, FK_impuesto, FK_valor_impuesto, precio_total) VALUES
('1', 'el cliente selecciono un tatuaje de catalogo del artista del local' ,'30/11/2021' ,'70' ,'0' ,'22' ,'0.1' ,'77'),
('2','El cliente trajo un tatuaje de referencia','1/12/2021','50','0','22','0.1','55'),
('3','el cliente pidio un tatuaje que fue diseñado en el local','2/12/2021','80','0','22','0.1','88'),
('4','el cliente trajo un tatuaje diseñado por el','3/12/2021','70','0','22','0.1','77'),
('5','piercing con joya incluida comprada en el local','4/12/2021','0','20','22','0.1','22'),
('6','piercing sin joya incluida pues el cliente trajo la suya','5/12/2021','0','20','22','0.1','22'),
('7','cliente decide hacerce un tatuaje y un piercing','6/12/2021','70','20','22','0.1','99');


-- Table: Productos  ------------- [YA]
INSERT INTO Productos (id_producto,nombre,descripcion,FK_tipo_producto,FK_precio_producto) VALUES
('1','tatuaje de runas','el cliente selecciono un tatuaje de catalogo del artista del local','1','1'),
('2','tatuaje de serpiente','El cliente trajo un tatuaje de referencia','2','2'),
('3','tatauje unico ','el cliente pidio un tatuaje que fue diseñado en el local','3','3'),
('4','tatuaje diseñado por cliente amalgama','el cliente trajo un tatuaje diseñado por el','4','4'),
('5','Expansión','piercing con joya incluida comprada en el local','5','5'),
('6','barras','piercing sin joya incluida pues el cliente trajo la suya','6','6');


-- Table: Tickets ------------- [YA]
INSERT INTO Tickets (id_ticket,medio_pago,fecha_ticket,FK_id_cliente,FK_detalle_ticket,FK_precio_producto) VALUES
('1','Efectivo','20/11/2021','1','1','1'),
('2','PSE','21/11/2021','2','1','6'),
('3','Nequi','22/11/2021','3','1','2'),
('4','Paypal','23/11/2021','4','1','5'),
('5','Bancolombia a la Mano','24/11/2021','5','7','3'),
('6','Baloto Electronico','25/11/2021','6','8','4'),
('7','Visa','26/11/2021','7','8','4'),
('8','MasterCard','27/11/2021','1','1','3'),
('9','Tpaga','28/11/2021','2','1','5'),
('10','Movii','29/11/2021','3','1','2'),
('11','Powwi','30/11/2021','4','1','6'),
('12','Rappi Pay','1/12/2021','5','7','1'),
('13','Tuya','2/12/2021','6','8','7'),
('14','BBVA','3/12/2021','7','8','7'),
('15','Paga Aquí','4/12/2021','1','1','1'),
('16','Colpatria','5/12/2021','2','1','6'),
('17','Daviplata','6/12/2021','3','1','2'),
('18','Efectivo','7/12/2021','4','1','5'),
('19','Nequi','8/12/2021','5','8','3'),
('20','Efectivo','9/12/2021','6','8','4');


-- Table: TiendasTattoo ------------- [YA]
INSERT INTO TiendasTattoo (id_tienda_tattoo,nombre_tienda,direccion,telefono,nit,departamento,ciudad,FK_horario) VALUES
('1','Ninja Tattoo Tunja','Prívate Studio  Cl. 47A ##6-27','321 9002374','123.456.789-A','Boyaca','Tunja','1'),
('2','Monster House Tattoo y Piercing Studio','Cra. 22 # 9- 44 Centro Comercial Paseo de la Salamandra','320 2240569','123.456.789-B','Boyaca','Tunja','2'),
('3','SKIN INK TATTOO','RESTAURATE LA ROMANA D.C  Cra. 9 ##20','316 5152020','123.456.789-C','Boyaca','Tunja','3'),
('4','SALOON PRIVE','Cl. 29 ##10a-1','311 5287058','123.456.789-D','Boyaca','Tunja','4'),
('5','DONOVAN Tattoo Studio',' A dos cuadras de la iglesia  Cra. 10 ##28','311 2939361','123.456.789-E','Boyaca','Tunja','5'),
('6','Dark Side',' Tv 7 No.44-39  Local 2  Santa Ines','321 3790956','123.456.789-F','Boyaca','Tunja','6'),
('7','Tokio Tatto Shop','Cra. 9 ##24-77','314 3788665','123.456.789-G','Boyaca','Tunja','7'),
('8','El Diamante Negro Tatuajería','Cl. 18 ##12 -37','310 8843180','123.456.789-H','Boyaca','Tunja','8'),
('9','InkSide Tattoo Studio','las terrazas  Av Universitaria 41a # 1-02 segundo piso  Av Universitaria','301 6920102','123.456.789-I','Boyaca','Tunja','9'),
('10','LA PIRAÑA TATTOO SHOP','Tv. 0 Este ##66a 20','313 5574233','123.456.789-J','Boyaca','Tunja','10'),
('11','SORRY MOM TATTOO STUDIO','Cl. 22 ## 9-44 local 214','310 4787465','123.456.789-k','Boyaca','Tunja','11'),
('12','Supplis tattoo','150003','321 9708574','123.456.789-L','Boyaca','Tunja','12'),
('13','Soul Art Tattoo Studio',' CC Boulevard  Av. Olímpica #3 - 76 Local 204','320 9015810','123.456.789-M','Boyaca','Tunja','13'),
('14','Ancestral Tattoo Studio',' Cl. 39 ##6 - 32','301 2325570','123.456.789-N','Boyaca','Tunja','2'),
('15','Piel Toxica Pink','Cra. 10 ###22-22 Local 1','310 5810318','123.456.789-O','Boyaca','Tunja','14'),
('16','Monster House Tatuaje  Piercing & Galeria','Carrera 10 # 20 - 91 El Virrey Centro Comercial Local 219','0','123.456.789-P','Boyaca','Tunja','15'),
('17','Tinta Viva Tattoo & Body Piercing','Carrera 12 14 03 B. Nueva Santa Barbara','300 4117121','123.456.789-Q','Boyaca','Tunja','2'),
('18','Tattoo studio SorryMom','Paseo De La Salamandra','0','123.456.789-R','Boyaca','Tunja','17'),
('19','Tokio Tattoo Premium','Tv. 11 ##2354','0','123.456.789-S','Boyaca','Tunja','18'),
('20','Dragons art tattoo','Cl. 17 ##13 -42 local 3','310 2791926','123.456.789-T','Boyaca','Tunja','19'),
('21','Inkcorp Tatto Estudio','150001','314 4673499','123.456.789-U','Boyaca','Tunja','20'),
('22','Afrik Tattoo and Gallery Supply','No presenta','0','123.456.789-V','Boyaca','Tunja','21'),
('23','Maura Velandia','estudio privado','3022600012','123.456.789-W','Boyaca','Tunja','22'),
('24','Alex Raven','estudio privado','3156899355','123.456.789-Y','Boyaca','Tunja','23'),
('25','Nixon Betancourt','estudio privado','0','123.456.789-Z','Boyaca','Tunja','1');


-- Table: TiposMaterial ------------- [YA]
INSERT INTO TiposMaterial (id_tipo_material,nombre_tipo_material) VALUES
('1','tinta para tatuaje'),
('2','marcadores'),
('3','algodón aceptico'),
('4','alcohol aceptico'),
('5','guantes de latex negro'),
('6','guantes de nitrilo negro'),
('7','toallas'),
('8','papel higienico'),
('9','pinzas perforadoras de piercing'),
('10','Maquinda electrica de tatuajes'),
('11','agujas para tatuar'),
('12','jeringas'),
('13','agujas de jeringas'),
('14','Autoclave'),
('15','Ungüento '),
('16','vendaje'),
('17','gasas'),
('18','espuma limpiadora'),
('19','toallas de papel absorvente'),
('20','velas aromatizantes'),
('21','humificadore'),
('22','camilla de tatuaje'),
('23','plastico Vinipel Rollo'),
('24','cremas hidratantes');

-- Table: TiposPersona ------------- [YA]
INSERT INTO TiposPersona (id_tipo_persona,tipo_persona) VALUES
('1','cliente'),
('2','proveedor'),
('3','tatuador'),
('4','perforador'),
('5','administrador'),
('6','dibujante');

-- Table: TiposProductos ------------- [YA]
INSERT INTO TiposProductos (id_tipo_producto,nombre_tipo_producto) VALUES
('1','tatuaje de catalogo'),
('2','tatuaje de referencia'),
('3','tatuaje de diseño por empleados'),
('4','tatuaje de diseño por cliente'),
('5','piercing con joya incluida'),
('6','piercing sin joya incluida');

-- Table: impuestoXproducto ------------- [YA]
INSERT INTO impuestoXproducto (id_impXprodu,id_precio_producto,id_impuesto) VALUES
('1','1','22'),
('2','2','22'),
('3','3','22'),
('4','4','22'),
('5','5','22'),
('6','6','22'),
('7','7','22');
 
-- Table: personaXtipper ------------- [YA]
INSERT INTO personaXtipper (id_personaXtipper,id_persona,id_tipo_persona) VALUES
('1','1','1'),
('2','2','1'),
('3','3','1'),
('4','4','1'),
('5','5','1'),
('6','6','1'),
('7','7','1'),
('8','8','2'),
('9','9','2'),
('10','10','2'),
('11','11','2'),
('12','12','2'),
('13','13','2'),
('14','14','2'),
('15','15','3'),
('16','16','3'),
('17','17','3'),
('18','18','3'),
('19','19','3'),
('20','20','3'),
('21','21','3'),
('22','22','3'),
('23','23','3'),
('24','24','3'),
('25','25','4'),
('26','26','4'),
('27','27','4'),
('28','28','4'),
('29','29','4'),
('30','30','4'),
('31','31','4'),
('32','32','4'),
('33','33','4'),
('34','34','4'),
('35','35','4'),
('36','36','5'),
('37','37','5'),
('38','38','5'),
('39','39','5'),
('40','40','5'),
('41','41','5'),
('42','42','5'),
('43','43','6'),
('44','44','6'),
('45','45','6'),
('46','46','6'),
('47','47','6'),
('48','48','6'),
('49','49','6');


-- Table: proveedorXmaterial ------------- [YA]
INSERT INTO proveedorXmaterial (id_proveXmat,id_material,id_proveedor) VALUES
('1','1','8'),
('2','2','9'),
('3','3','10'),
('4','4','11'),
('5','5','12'),
('6','6','13'),
('7','7','14'),
('8','8','8'),
('9','9','9'),
('10','10','10'),
('11','11','11'),
('12','12','12'),
('13','13','13'),
('14','14','14'),
('15','15','8'),
('16','16','9'),
('17','17','10'),
('18','18','11'),
('19','19','12'),
('20','20','13'),
('21','21','14'),
('22','22','8'),
('23','23','9'),
('24','24','10'),
('25','25','11'),
('26','26','12'),
('27','27','13'),
('28','28','14'),
('29','29','8'),
('30','30','9'),
('31','31','10'),
('32','32','11'),
('33','33','12'),
('34','34','13'),
('35','35','14'),
('36','36','8'),
('37','37','9'),
('38','38','10'),
('39','39','11'),
('40','40','12'),
('41','41','13');
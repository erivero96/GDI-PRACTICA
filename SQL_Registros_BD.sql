use gestion_trabajadores;
INSERT INTO funcionario (dniFuncionario, nombre, apellidos, correo) VALUES
('45922445', 'frank robert', 'aldave marrreros', 'frank.aldave@enaex.com'),
('46381129', 'melser', 'fuentes nuñonca', 'melser.fuentes@enaex.com'),
('16716087', 'juan carlos', 'guzman montalvan', 'juan.guzman@enaex.com'),
('41469083', 'john ricardo', 'julca araujo', 'john.julca@enaex.com'),
('10621292', 'jorge', 'luna leon', 'jorge.luna@enaex.com'),
('71560084', 'danny', 'tovar beccera', 'danny.tovar@enaex.com'),
('42331849', 'rolando david', 'held del carpio', 'roland.held@enaex.com'),
('70327447', 'manuel angel', 'huayas salvatiierra', 'manuel.huayas@enaex.com'),
('70766660', 'andrea milagros', 'cuno parari', 'andrea.cuno@enaex.com'),
('44395916', 'liz margot', 'gomez perez', 'liz.gomez@enaex.com');


-- Registros para la tabla Supervisor
INSERT INTO supervisor (dniSupervisor, numAlmacen) VALUES
('45922445', 5),
('46381129', 7),
('16716087', 4),
('41469083', 6),
('10621292', 2),
('71560084', 1);

-- Registros para la tabla Administrador
INSERT INTO administrador (dniAdministrador, area) VALUES
('70766660', 'Recursos Humanos'),
('44395916', 'Recursos Humanos');

-- Registros para la tabla JefeOperaciones
INSERT INTO jefeoperaciones (dniJefeOp, operacion) VALUES
('42331849', 'Voladura'),
('70327447', 'Voladura');

INSERT INTO Trabajador (dniTrabajador, dniSupervisor, nombres, apellidos, cargo, telefono) VALUES
('80248409', '45922445', 'aguedo', 'rosas', 'operador de camión fábrica', '987654321'),
('74027508', '46381129', 'aguirre', 'benavides', 'asistente ssoma', '988765432'),
('10815966', '16716087', 'amambal', 'infante', 'operador de camión fábrica', '989876543'),
('41468992', '41469083', 'anaya', 'garay', 'operador de equipo auxiliar', '990987654'),
('45911219', '10621292', 'baldeon', 'sachahuaman', 'operario de piso', '991098765'),
('71347822', '71560084', 'bastidas', 'meza', 'operario de piso', '992109876'),
('20722235', '45922445', 'blas', 'nonalaya', 'operador de camión fábrica', '993210987'),
('72117546', '46381129', 'calapuja', 'quispe', 'asistente tecnico', '994321098'),
('46715226', '16716087', 'camarena', 'cosme', 'especialista de disparos electronicos', '995432109'),
('46199251', '41469083', 'catire', 'gonzales', 'operador de equipo auxiliar', '996543210'),
('47049638', '10621292', 'chicahuari', 'diaz', 'operario de piso', '997654321'),
('70194113', '71560084', 'chilon', 'mestanza', 'operador de equipo auxiliar', '998765432'),
('41196780', '45922445', 'corpus', 'rodriguez', 'operador de camión fábrica', '999876543'),
('40066474', '46381129', 'corpus', 'rodriguez', 'operador de camión fábrica', '900987654'),
('15742812', '16716087', 'davila', 'villarreal', 'operador de equipo auxiliar', '901098765'),
('41302895', '41469083', 'dominguez', 'roncal', 'operador de camión fábrica', '902109876'),
('72706332', '10621292', 'escriba', 'chacon', 'asistente tecnico', '903210987'),
('74916301', '71560084', 'espinal', 'marquez', 'operario de piso', '904321098'),
('75567026', '45922445', 'espinoza', 'bailon', 'trainee de servicio', '905432109'),
('10207527', '46381129', 'espinoza', 'leyva', 'operador de camión fábrica', '906543210'),
('44658546', '16716087', 'espinoza', 'tadeo', 'operador de equipo auxiliar', '907654321'),
('70514755', '41469083', 'fernandez', 'carnero', 'asistente tecnico', '908765432'),
('46968201', '10621292', 'figueroa', 'urbano', 'programador de disparos electronicos', '909876543'),
('46915573', '71560084', 'galindo', 'fernandez', 'operador de equipo auxiliar', '910987654'),
('70479588', '45922445', 'giraldo', 'delgado', 'mecanico', '911098765'),
('72298904', '46381129', 'hinostroza', 'valenzuela', 'operador de camión fábrica', '912109876'),
('47380194', '16716087', 'huaman', 'alcantara', 'asistente tecnico', '913210987'),
('46021319', '41469083', 'illan', 'cochachin', 'operador de equipo auxiliar', '914321098'),
('41157842', '10621292', 'jaque', 'rodriguez', 'operador de camión fábrica', '915432109'),
('49604553', '71560084', 'lara', 'negron', 'superintendente de operaciones', '916543210'),
('40485159', '45922445', 'lazo', 'tafura', 'operario de piso', '917654321'),
('45201478', '46381129', 'leon', 'chavez', 'especialista de disparos electronicos', '918765432'),
('80617489', '16716087', 'lopez', 'tello', 'lider de voladura', '919876543'),
('72122673', '41469083', 'luna', 'malaga', 'asistente tecnico', '920987654'),
('45200520', '10621292', 'malaga', 'jove', 'lider de voladura', '921098765'),
('40124379', '71560084', 'mantilla', 'murrugarra', 'operador de camión fábrica', '922109876'),
('62137161', '45922445', 'martinez', 'caja', 'mecanico', '923210987'),
('47740448', '46381129', 'mascco', 'carhuas', 'operario de piso', '924321098'),
('70547081', '16716087', 'mauricio', 'ricaldi', 'asistente de polvorines', '925432109'),
('42762286', '41469083', 'mendoza', 'rodriguez', 'operador de equipo auxiliar', '926543210'),
('70037460', '10621292', 'olivera', 'cano', 'trainee de servicio', '927654321'),
('95199731', '71560084', 'prado', 'bezada', 'mecanico', '928765432'),
('72962229', '45922445', 'quispe', 'coaquira', 'operario de piso', '929876543'),
('71253657', '46381129', 'quispe', 'luya', 'representante tecnico', '930987654'),
('47629158', '16716087', 'ramirez', 'chuquitaype', 'operario de piso', '931098765'),
('21557381', '41469083', 'ramos', 'cruz', 'operador de camión fábrica', '932109876'),
('71968596', '10621292', 'ramos', 'surichaqui', 'operario de piso', '933210987'),
('74025610', '71560084', 'robles', 'escalante', 'programador de disparos electronicos', '934321098'),
('74361295', '45922445', 'rojas', 'chaico', 'operario de piso', '935432109'),
('42099652', '46381129', 'ruiz', 'maldonado', 'operador de camión fábrica', '936543210'),
('70662553', '16716087', 'sanchez', 'piña', 'mecanico', '937654321'),
('40239841', '41469083', 'santander', 'salazar', 'operador de camión fábrica', '938765432'),
('45305469', '10621292', 'solorzano', 'aguilar', 'operador de equipo auxiliar', '939876543'),
('70568154', '71560084', 'urquia', 'rivera', 'programador de disparos electronicos', '940987654'),
('45700179', '45922445', 'valdiviezo', 'rosas', 'operario de piso', '941098765'),
('46835577', '46381129', 'vargas', 'tejada', 'especialista de disparos electronicos', '942109876'),
('75184110', '16716087', 'vente', 'reyes', 'programador de disparos electronicos', '943210987'),
('70002010', '41469083', 'yuyali', 'quispe', 'programador de disparos electronicos', '944321098'),
('73141461', '10621292', 'zela', 'chirinos', 'programador de disparos electronicos', '945432109'),
('41526090', '71560084', 'niquen', 'agapito', 'asistente de polvorines', '946543210'),
('40714774', '45922445', 'manya', 'cusquisiban', 'operador de camión fábrica', '947654321'),
('47256314', '46381129', 'rios', 'vilca', 'especialista de disparos electronicos', '948765432'),
('46433504', '16716087', 'rodriguez', 'caceres', 'operador equipo auxiliar', '949876543'),
('76164832', '41469083', 'inocente', 'moreno', 'practicante', '950987654'),
('42897113', '10621292', 'martin', 'facundo', 'operario de piso', '951098765');


INSERT INTO telefono (dniFuncionario, telefono) VALUES
('45922445', '991-1234'), ('45922445', '992-5678'),
('46381129', '993-9876'), ('46381129', '994-1122'),
('16716087', '995-4321'), ('16716087', '996-9988'),
('41469083', '997-8765'), ('41469083', '998-3344'),
('10621292', '999-6543'), ('10621292', '911-2233'),
('71560084', '912-0987'), ('71560084', '913-5566'),
('42331849', '914-2222'), ('42331849', '915-7788'),
('70327447', '916-3333'), ('70327447', '917-1123'),
('70766660', '918-4444'), ('70766660', '919-2244'),
('44395916', '920-5555'), ('44395916', '921-6677');


INSERT INTO solicitud (dniJefeOp, dniSupervisor, motivo, fecha, cantTrabajadores) VALUES
-- Junio 2024
('42331849', '45922445', '01 Proyecto de voladura en tajo norte, 02 proyectos en tajo sur mas secundario', '2024-06-01', 1),
('70327447', '46381129', '01 proyecto de voladura en tajo sur', '2024-06-03', 5),
('42331849', '16716087', '01 proyecto de voladura en tajo sur', '2024-06-05', 3),
('42331849', '41469083', 'Carguio hasta 7:00pm', '2024-06-07', 4),
('70327447', '10621292', '02 Proyectos de voladura en tajo Sur', '2024-06-10', 2),
('70327447', '71560084', '02 Proyectos de voladura en tajo Sur(362 dt)', '2024-06-12', 3),
('70327447', '45922445', '02 Proyectos de voladura en tajo Sur y tajo norte (418 det)', '2024-06-15', 2),
('42331849', '46381129', '01 Proyectos de voladura en tajo Sur  (100 det)', '2024-06-18', 5),
('70327447', '16716087', '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160', '2024-06-20', 3),
('42331849', '41469083', '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B ', '2024-06-25', 4),

-- Julio 2024
('70327447', '45922445', '02 proyectos en tajo sur 3555_84, secundario, tajo norte 3960_222B, secundario y adelanto de carguio', '2024-07-01', 5),
('42331849', '46381129', '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio', '2024-07-03', 3),
('42331849', '16716087', '01 proyectos en tajo sur 3570_59B, carguio para el cieere de malla y adelanto de carguio', '2024-07-05', 4),
('70327447', '41469083', '01 proyectos en tajo sur 3765_187  proyecto con 80% de precencia de agua 278 det. Y adelanto de carguio', '2024-07-08', 2),
('42331849', '10621292', '01 Proyecto en tajo Norte y 01 proyecto de tajo Sur', '2024-07-10', 2),
('42331849', '71560084', '01 proyecto de voladura en tajo sur', '2024-07-12', 5),
('70327447', '45922445', '02 Proyectos en Tajo Sur', '2024-07-14', 3),
('70327447', '46381129', '01 Proyecto de voladura en tajo norte ', '2024-07-16', 4),
('70327447', '16716087', '02 Proyectos en Tajo Sur', '2024-07-20', 2),
('42331849', '41469083', '03 Proyectos en Tajo Sur', '2024-07-22', 3);

-- Registros corregidos para la tabla Justificación
INSERT INTO justificacion (dniAdministrador, dniTrabajador, fecha, motivo) VALUES
('70766660', '80248409', '2024-06-05', 'Licencia médica por enfermedad respiratoria'),
('70766660', '74027508', '2024-07-10', 'Permiso por asuntos familiares'),
('44395916', '10815966', '2024-08-15', 'Licencia médica por enfermedad'),
('44395916', '41468992', '2024-08-20', 'Permiso por asuntos familiares'),
('70766660', '45911219', '2024-09-05', 'Licencia médica por enfermedad'),
('44395916', '20722235', '2024-10-10', 'Licencia médica por enfermedad');


-- Reportes para junio de 2024
INSERT INTO ReporteDiario (dniAdministrador, dniSupervisor, contratista, turno, horaLaboral, clima, actividades, revisadoPorJefe, revisadoPorSuperVC, revisadoPorSupervisor, comentariosSupervisor, fecha) VALUES
('44395916', '45922445', 'Enaex', 'D', '06:00:00', 'Soleado', 'SE REALIZA PROGRAMACION', 'HELD DEL CARPIO ROLANDO DAVID', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-06-01'),
('70766660', '46381129', 'Enaex', 'D', '06:00:00', 'Nublado', 'CONEXIÓN SUPERFICIAL DE DETONADORES CON CABLE M35', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'ALDAVE MARREROS FRANK ROBERT', 'TOVAR BECERRA DANNY', 'Cumplido según lo planeado', '2024-06-03'),
('44395916', '16716087', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'TENDIDO DE LINEA', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'LUNA LEON JORGE', 'Pendiente de revisión', '2024-06-05'),
('70766660', '41469083', 'Enaex', 'D', '06:00:00', 'Soleado', 'INSTALACION DE TRIPODE', 'HELD DEL CARPIO ROLANDO DAVID', 'FUENTES NUÑONCA MELSER', 'ALDAVE MARREROS FRANK ROBERT', 'Todo en orden', '2024-06-07'),
('70766660', '10621292', 'Enaex', 'D', '06:00:00', 'Nublado', 'INSTALACION DE EQUIPO ELECRONICO DAVEYTRONIC DBD Y DETONACION DE MALLA DE VOLADURA ELECTONICA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'GUZMAN MONTALVAN JUAN CARLOS', 'JULCA ARAUJO JOHN RICARDO', 'Cumplido según lo planeado', '2024-06-10'),
('44395916', '71560084', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'SE REALIZA PROGRAMACION', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'ALDAVE MARREROS FRANK ROBERT', 'GUZMAN MONTALVAN JUAN CARLOS', 'Pendiente de revisión', '2024-06-12'),
('70766660', '45922445', 'Enaex', 'D', '06:00:00', 'Soleado', 'CONEXIÓN SUPERFICIAL DE DETONADORES CON CABLE M35', 'HELD DEL CARPIO ROLANDO DAVID', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-06-15'),
('44395916', '46381129', 'Enaex', 'D', '06:00:00', 'Nublado', 'TENDIDO DE LINEA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'ALDAVE MARREROS FRANK ROBERT', 'TOVAR BECERRA DANNY', 'Cumplido según lo planeado', '2024-06-18'),
('70766660', '16716087', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'INSTALACION DE TRIPODE', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'LUNA LEON JORGE', 'Pendiente de revisión', '2024-06-20'),
('70766660', '41469083', 'Enaex', 'D', '06:00:00', 'Soleado', 'INSTALACION DE EQUIPO ELECRONICO DAVEYTRONIC DBD Y DETONACION DE MALLA DE VOLADURA ELECTONICA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'FUENTES NUÑONCA MELSER', 'ALDAVE MARREROS FRANK ROBERT', 'Todo en orden', '2024-06-25'),
-- Reportes para julio de 2024
('44395916', '10621292', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'SE REALIZA PROGRAMACION', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'TOVAR BECERRA DANNY', 'Todo en orden', '2024-07-01'),
('70766660', '46381129', 'Enaex', 'D', '06:00:00', 'Soleado', 'CONEXIÓN SUPERFICIAL DE DETONADORES CON CABLE M35', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'GUZMAN MONTALVAN JUAN CARLOS', 'Todo en orden', '2024-07-03'),
('70766660', '45922445', 'Enaex', 'D', '06:00:00', 'Nublado', 'TENDIDO DE LINEA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-07-05'),
('44395916', '45922445', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'INSTALACION DE TRIPODE', 'HELD DEL CARPIO ROLANDO DAVID', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-07-08'),
('70766660', '46381129', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'INSTALACION DE EQUIPO ELECRONICO DAVEYTRONIC DBD Y DETONACION DE MALLA DE VOLADURA ELECTONICA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'JULCA ARAUJO JOHN RICARDO', 'GUZMAN MONTALVAN JUAN CARLOS', 'Todo en orden', '2024-07-10'),
('44395916', '45922445', 'Enaex', 'D', '06:00:00', 'Soleado', 'SE REALIZA PROGRAMACION', 'HELD DEL CARPIO ROLANDO DAVID', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-07-12'),
('44395916', '10621292', 'Enaex', 'D', '06:00:00', 'Nublado', 'CONEXIÓN SUPERFICIAL DE DETONADORES CON CABLE M35', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'JULCA ARAUJO JOHN RICARDO', 'TOVAR BECERRA DANNY', 'Todo en orden', '2024-07-14'),
('70766660', '45922445', 'Enaex', 'D', '06:00:00', 'Soleado', 'TENDIDO DE LINEA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'GUZMAN MONTALVAN JUAN CARLOS', 'GUZMAN MONTALVAN JUAN CARLOS', 'Todo en orden', '2024-07-16'),
('70766660', '46381129', 'Enaex', 'D', '06:00:00', 'Soleado', 'INSTALACION DE TRIPODE', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'GUZMAN MONTALVAN JUAN CARLOS', 'Todo en orden', '2024-07-20'),
('70766660', '10621292', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'INSTALACION DE EQUIPO ELECRONICO DAVEYTRONIC DBD Y DETONACION DE MALLA DE VOLADURA ELECTONICA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'JULCA ARAUJO JOHN RICARDO', 'TOVAR BECERRA DANNY', 'Todo en orden', '2024-07-22');


INSERT INTO detallereportediario (
    idReporteDiario, dni, horaInicio, horaTermino, horasLaboradas, horasRegulares, horasExtra, motivo
) VALUES
(1, '10815966', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '01 Proyecto de voladura en tajo norte, 02 proyectos en tajo sur mas secundario'),
(2, '41468992', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(2, '45911219', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(2, '71347822', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(2, '41302895', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(2, '20722235', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(3, '41468992', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '01 proyecto de voladura en tajo sur'),
(3, '10815966', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '01 proyecto de voladura en tajo sur'),
(3, '15742812', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '01 proyecto de voladura en tajo sur'),
(4, '70514755', '06:00:00', '23:00:00', 17.00, 12.00, 5.00, 'Carguio hasta 11:00pm'),
(4, '72117546', '06:00:00', '23:00:00', 17.00, 12.00, 5.00, 'Carguio hasta 11:00pm'),
(4, '41468992', '06:00:00', '23:00:00', 17.00, 12.00, 5.00, 'Carguio hasta 11:00pma'),
(4, '10815966', '06:00:00', '23:00:00', 17.00, 12.00, 5.00, 'Carguio hasta 11:00pm'),
(5, '80248409', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur'),
(5, '74027508', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur'),
(6, '41196780', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur(362 dt)'),
(6, '70194113', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur(362 dt)'),
(6, '41468992', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur(362 dt)'),
(7, '70514755', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '02 Proyectos de voladura en tajo Sur y tajo norte (418 det)'),
(7, '20722235', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '02 Proyectos de voladura en tajo Sur y tajo norte (418 det)'),
(8, '41468992', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, 'Control nocturno'),
(8, '10815966', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 Proyectos de voladura en tajo Sur  (100 det)'),
(8, '10207527', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 Proyectos de voladura en tajo Sur  (100 det)'),
(8, '46968201', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 Proyectos de voladura en tajo Sur  (100 det)'),
(8, '44658546', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 Proyectos de voladura en tajo Sur  (100 det)'),
(9, '72122673', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(9, '45200520', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(9, '62137161', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160a'),
(10, '71253657', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B'),
(10, '70514755', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B'),
(10, '21557381', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B'),
(10, '42099652', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B'),


-- Detalle para julio
(11, '75567026', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(11, '10207527', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(11, '70514755', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(11, '72298904', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(11, '40485159', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(12, '41157842', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '03 Proyectos en Tajo Sur'),
(12, '41196780', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '03 Proyectos en Tajo Sur'),
(12, '46199251', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '03 Proyectos en Tajo Sur'),
(13, '10207527', '06:00:00', '19:00:00', 13.00, 12.00, 1.00, '01 Proyecto en tajo Norte y 02 proyectos en tajo sur'),
(13, '70514755', '06:00:00', '19:00:00', 13.00, 12.00, 1.00, '01 Proyecto en tajo Norte y 02 proyectos en tajo sur'),
(13, '72298904', '06:00:00', '19:00:00', 13.00, 12.00, 1.00, '01 Proyecto en tajo Norte y 02 proyectos en tajo sur'),
(13, '40485159', '06:00:00', '19:00:00', 13.00, 12.00, 1.00, '01 Proyecto en tajo Norte y 02 proyectos en tajo sur'),
(14, '47380194', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '02 proyectos en tajo sur 3765_186, tajo norte 3960_224 y adelanto de carguio'),
(14, '46021319', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '02 proyectos en tajo sur 3765_186, tajo norte 3960_224 y adelanto de carguio'),
(15, '42762286', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '02 proyectos en tajo sur 3765_186, tajo norte 3960_224 y adelanto de carguio'),
(15, '46021319', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '02 proyectos en tajo sur 3765_186, tajo norte 3960_224 y adelanto de carguio'),
(16, '95199731', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(16, '41157842', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(16, '70514755', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(16, '40124379', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(16, '74025610', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(17, '10207527', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(17, '70514755', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(17, '72298904', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(18, '40239841', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio'),
(18, '45305469', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio'),
(18, '45700179', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio'),
(18, '72298904', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio'),
(19, '75567026', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(19, '10207527', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(20, '70514755', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 voladuras en tajo Sur'),
(20, '72298904', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 voladuras en tajo Sur'),
(20, '40485159', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 voladuras en tajo Sur');

INSERT INTO formatohorasextra (dniAdministrador, dniJefeOp) VALUES
('70766660', '42331849'),
('44395916', '70327447');

INSERT INTO detalle_formato_horas_extra (idFormatoHorasExtra, dni, fecha, totalHorasExtra) VALUES
-- Datos Junio
(1, '10815966', '2024-06-15', 12.00),
(1, '41468992', '2024-06-15', 15.00),
(1, '70514755', '2024-06-15', 14.00),
(1, '20722235', '2024-06-15', 6.00),
(1, '10207527', '2024-06-15', 3.00),
(1, '45911219', '2024-06-15', 3.00),
(1, '71347822', '2024-06-15', 3.00),
(1, '41302895', '2024-06-15', 3.00),
(1, '15742812', '2024-06-15', 2.00),
(1, '72117546', '2024-06-15', 5.00),
(1, '80248409', '2024-06-15', 2.00),
(1, '74027508', '2024-06-15', 2.00),
(1, '41196780', '2024-06-15', 2.00),
(1, '70194113', '2024-06-15', 2.00),
(1, '46968201', '2024-06-15', 3.00),
(1, '44658546', '2024-06-15', 3.00),
(1, '72122673', '2024-06-15', 2.00),
(1, '45200520', '2024-06-15', 2.00),
(1, '62137161', '2024-06-15', 2.00),
(1, '71253657', '2024-06-15', 6.00),
(1, '21557381', '2024-06-15', 6.00),
(1, '42099652', '2024-06-15', 6.00),

-- Datos Julio
(2, '75567026', '2024-07-15', 8.00),
(2, '10207527', '2024-07-15', 18.00),
(2, '70514755', '2024-07-15', 18.00),
(2, '72298904', '2024-07-15', 24.00),
(2, '40485159', '2024-07-15', 14.00),
(2, '41157842', '2024-07-15', 6.00),
(2, '41196780', '2024-07-15', 2.00),
(2, '46199251', '2024-07-15', 2.00),
(2, '47380194', '2024-07-15', 6.00),
(2, '46021319', '2024-07-15', 12.00),
(2, '42762286', '2024-07-15', 6.00),
(2, '95199731', '2024-07-15', 4.00),
(2, '40124379', '2024-07-15', 4.00),
(2, '74025610', '2024-07-15', 4.00),
(2, '40239841', '2024-07-15', 4.00),
(2, '45305469', '2024-07-15', 4.00),
(2, '45700179', '2024-07-15', 4.00);

INSERT INTO formatohorasextra (dniAdministrador, dniJefeOp) VALUES
('70766660', '42331849'),
('44395916', '70327447');

insert into horasextraAl100 (fecha, dni, horasAl100) values
('2024-06-15', '71253657', 6),
('2024-06-15', '70514755', 6),
('2024-06-15', '21557381', 6),
('2024-06-15', '42099652', 6),

('2024-07-15', '47380194', 6),
('2024-07-15', '46021319', 6),
('2024-07-15', '42762286', 6);


INSERT INTO detalle_formato_horas_extra (idFormatoHorasExtra, dni, fecha, totalHorasExtra) VALUES
-- Datos Junio
(1, '70514755', '2024-06-15', 14.00),
(1, '71253657', '2024-06-15', 6.00),
(1, '21557381', '2024-06-15', 6.00),
(1, '42099652', '2024-06-15', 6.00),

-- Datos Julio
(2, '47380194', '2024-07-15', 6.00),
(2, '46021319', '2024-07-15', 12.00),
(2, '42762286', '2024-07-15', 6.00);
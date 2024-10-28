-- Generar reporte detallado de horas extra trabajadas por cada empleado en un mes específico:
SELECT t.nombres, t.apellidos, e.fecha, e.horasAl25, e.horasAl35, e.horasAl100 
FROM EquivalenteEnHoras e 
JOIN Trabajador t ON e.dni = t.dniTrabajador 
WHERE MONTH(e.fecha) = 6 AND YEAR(e.fecha) = YEAR(NOW());

-- Consultar el total de horas trabajadas por cada empleado, separando regulares y horas extra:
SELECT d.dni, t.nombres, t.apellidos, 
       SUM(d.horasRegulares) AS TotalHorasRegulares, 
       SUM(d.horasExtra) AS TotalHorasExtra
FROM DetalleReporteDiario d
JOIN Trabajador t ON d.dni = t.dniTrabajador
GROUP BY d.dni;

-- Obtener los trabajadores supervisados por cada supervisor y su cantidad de horas extra trabajadas
SELECT s.dniSupervisor, t.nombres, t.apellidos, 
       SUM(d.horasExtra) AS HorasExtraTotales
FROM Supervisor s
JOIN Trabajador t ON s.dniSupervisor = t.dniSupervisor
JOIN DetalleReporteDiario d ON t.dniTrabajador = d.dni
GROUP BY s.dniSupervisor, t.dniTrabajador
ORDER BY s.dniSupervisor, t.nombres

-- Supervisores con la Cantidad de Trabajadores a su Cargo y Total de Horas Extra Reportadas:
SELECT s.dniSupervisor, 
       COUNT(t.dniTrabajador) AS CantidadTrabajadores, 
       SUM(d.horasExtra) AS TotalHorasExtra
FROM Supervisor s
JOIN Trabajador t ON s.dniSupervisor = t.dniSupervisor
JOIN DetalleReporteDiario d ON t.dniTrabajador = d.dni
GROUP BY s.dniSupervisor
ORDER BY TotalHorasExtra DESC;

-- Generar reporte detallado de horas extra trabajadas por cada empleado en un mes específico:
SELECT jo.dniJefeOp AS "DNI Jefe Operaciones", jo.operacion AS "Operación",        
COUNT(s.idSolicitud) AS "Total Solicitudes",        
MONTH(s.fecha) AS "Mes" 
FROM JefeOperaciones jo 
JOIN Solicitud s ON jo.dniJefeOp = s.dniJefeOp 
GROUP BY jo.dniJefeOp, jo.operacion, MONTH(s.fecha) 
ORDER BY jo.dniJefeOp, "Mes";

-- Administradores con Mayor Número de Reportes Revisados:
SELECT a.dniAdministrador AS "DNI Administrador", 
       a.area AS "Área", 
       COUNT(rd.idReporteDiario) AS "Total Reportes Revisados"
FROM Administrador a
JOIN ReporteDiario rd ON a.dniAdministrador = rd.dniAdministrador
GROUP BY a.dniAdministrador, a.area
ORDER BY "Total Reportes Revisados" DESC;

-- Solicitudes con Mayor Cantidad de Trabajadores Asignados:
SELECT s.idSolicitud AS "ID Solicitud", 
       s.fecha AS "Fecha", 
       s.motivo AS "Motivo", 
       s.cantTrabajadores AS "Cantidad de Trabajadores", 
       j.operacion AS "Operación"
FROM Solicitud s
JOIN JefeOperaciones j ON s.dniJefeOp = j.dniJefeOp
WHERE s.cantTrabajadores > 3
ORDER BY s.cantTrabajadores DESC;

-- Reportes Diarios por Clima y Turno:
SELECT clima AS "Clima", 
       turno AS "Turno", 
       COUNT(idReporteDiario) AS "Total Reportes"
FROM ReporteDiario
GROUP BY clima, turno
ORDER BY "Total Reportes" DESC;

-- Horas de Trabajo por Reporte Diario:
SELECT r.fecha AS "Fecha", 
       r.turno AS "Turno", 
       SUM(d.horasLaboradas) AS "Total Horas Laboradas"
FROM ReporteDiario r
JOIN DetalleReporteDiario d ON r.idReporteDiario = d.idReporteDiario
GROUP BY r.fecha, r.turno
ORDER BY r.fecha DESC;

-- Teléfonos de Funcionarios por Tipo:
SELECT f.nombre AS "Nombre", 
       f.apellidos AS "Apellidos", 
       t.telefono AS "Teléfono",
       CASE 
           WHEN a.dniAdministrador IS NOT NULL THEN 'Administrador'
           WHEN s.dniSupervisor IS NOT NULL THEN 'Supervisor'
           WHEN j.dniJefeOp IS NOT NULL THEN 'Jefe de Operaciones'
           ELSE 'Funcionario General'
       END AS "Tipo de Funcionario"
FROM Funcionario f
LEFT JOIN Administrador a ON f.dniFuncionario = a.dniAdministrador
LEFT JOIN Supervisor s ON f.dniFuncionario = s.dniSupervisor
LEFT JOIN JefeOperaciones j ON f.dniFuncionario = j.dniJefeOp
JOIN Telefono t ON f.dniFuncionario = t.dniFuncionario
ORDER BY f.apellidos, f.nombre;

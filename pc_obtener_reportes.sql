-- Procedimiento obtiene todos los reportes si no hay fecha, o solo los reportes de una fecha específica
DELIMITER $$
CREATE PROCEDURE obtener_reportes(IN fecha_param DATE)
BEGIN
    IF fecha_param IS NOT NULL THEN
        SELECT idReporteDiario, fecha, contratista 
        FROM ReporteDiario
        WHERE fecha = fecha_param;
    ELSE
        SELECT idReporteDiario, fecha, contratista 
        FROM ReporteDiario;
    END IF;
END $$
DELIMITER ;

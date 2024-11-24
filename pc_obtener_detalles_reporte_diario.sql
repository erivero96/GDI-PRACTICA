DELIMITER //
CREATE PROCEDURE obtener_detalles_reporte_diario(
    IN p_idReporteDiario INT
)
BEGIN
    SELECT *
    FROM DetalleReporteDiario
    WHERE idReporteDiario = p_idReporteDiario;
END //
DELIMITER ;

-- procedimiento que permitirá insertar una justificacion
DELIMITER //
CREATE PROCEDURE insertar_justificacion(
    IN p_dniAdministrador CHAR(8),
    IN p_dniTrabajador CHAR(8),
    IN p_fecha DATE,
    IN p_motivo TEXT
)
BEGIN
    INSERT INTO Justificacion (dniAdministrador, dniTrabajador, fecha, motivo)
    VALUES (p_dniAdministrador, p_dniTrabajador, p_fecha, p_motivo);
END //
DELIMITER ;

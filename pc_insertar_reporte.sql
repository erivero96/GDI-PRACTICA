DELIMITER $$

CREATE PROCEDURE insertar_reporte(
    IN dniAdministrador CHAR(8),
    IN dniSupervisor CHAR(8),
    IN contratista VARCHAR(100),
    IN turno CHAR(1),
    IN horaLaboral TIME,
    IN clima VARCHAR(50),
    IN actividades TEXT,
    IN revisadoPorJefe VARCHAR(100),
    IN revisadoPorSuperVC VARCHAR(100),
    IN revisadoPorSupervisor VARCHAR(100),
    IN comentariosSupervisor TEXT,
    IN fecha DATE
)
BEGIN
    INSERT INTO ReporteDiario (
        dniAdministrador, dniSupervisor, contratista, turno, horaLaboral,
        clima, actividades, revisadoPorJefe, revisadoPorSuperVC, revisadoPorSupervisor,
        comentariosSupervisor, fecha
    ) 
    VALUES (
        dniAdministrador, dniSupervisor, contratista, turno, horaLaboral,
        clima, actividades, revisadoPorJefe, revisadoPorSuperVC, revisadoPorSupervisor,
        comentariosSupervisor, fecha
    );
END$$

DELIMITER ;

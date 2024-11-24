DELIMITER //

CREATE TRIGGER verificar_dni_equivalenteHorasExtra
BEFORE INSERT ON equivalenteenhoras
FOR EACH ROW
BEGIN
    -- Verificar si el dni existe en la tabla Trabajador o en la tabla Funcionario
    IF NOT EXISTS (SELECT 1 FROM Trabajador WHERE dniTrabajador = NEW.dni) AND
       NOT EXISTS (SELECT 1 FROM funcionario WHERE dniFuncionario = NEW.dni) THEN
       
        -- Si no existe, se lanza un error y no se permite la inserción
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El DNI no pertenece a un trabajador registrado en la empresa.';
    END IF;
END //

DELIMITER ;

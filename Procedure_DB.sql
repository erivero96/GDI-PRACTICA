-- Prodecure EquivalenteEnHoras

DELIMITER $$

CREATE PROCEDURE insertar_equivalente_en_horas(
    IN p_dni CHAR(8),
    IN p_fecha DATE,
    IN p_horas DECIMAL(4,2)
)
BEGIN
    -- Validar si el valor está fuera de los rangos permitidos
    IF p_horas <= 0 OR p_horas > 8 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Valor fuera de los rangos permitidos (0-8)';
    ELSE
        -- Decidir en qué columna insertar según el rango
        IF p_horas > 0 AND p_horas <= 3 THEN
            INSERT INTO equivalenteenhoras (dni, fecha, horasAl25, horasAl35, horasAl100)
            VALUES (p_dni, p_fecha, p_horas, NULL, NULL);
        ELSEIF p_horas > 3 AND p_horas <= 6 THEN
            INSERT INTO equivalenteenhoras (dni, fecha, horasAl25, horasAl35, horasAl100)
            VALUES (p_dni, p_fecha, NULL, p_horas, NULL);
        ELSEIF p_horas > 6 AND p_horas <= 8 THEN
            INSERT INTO equivalenteenhoras (dni, fecha, horasAl25, horasAl35, horasAl100)
            VALUES (p_dni, p_fecha, NULL, NULL, p_horas);
        END IF;
    END IF;
END$$

DELIMITER ;

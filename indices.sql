CREATE INDEX idx_cargo_trabajador ON Trabajador (cargo);
CREATE INDEX idx_nombre_apellido_trabajador ON Trabajador (nombre, apellidos);
CREATE INDEX idx_nombre_apellido_funcionario ON Funcionario (nombre, apellidos);
CREATE INDEX idx_telefono ON Telefono (telefono);
CREATE INDEX idx_fecha_reporte_diario ON ReporteDiario (fecha);

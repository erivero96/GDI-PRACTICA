CREATE database RegistrosSobretiempo;

use RegistrosSobretiempo;

-- Crear la tabla FUNCIONARIO
CREATE TABLE Funcionario (
    dniFuncionario CHAR(8) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL
)engine=InnoDB;

-- Crear la tabla SUPERVISOR
CREATE TABLE Supervisor (
    dniSupervisor CHAR(8) PRIMARY KEY,
    numAlmacen VARCHAR(3) NOT NULL
)engine=InnoDB;

-- Crear la tabla ADMINISTRADOR
CREATE TABLE Administrador (
    dniAdministrador CHAR(8) PRIMARY KEY,
    area VARCHAR(100) NOT NULL
)engine=InnoDB;

-- Crear la tabla JEFE_OPERACIONES
CREATE TABLE JefeOperaciones (
    dniJefeOp CHAR(8) PRIMARY KEY,
    operacion VARCHAR(100) NOT NULL
)engine=InnoDB;

-- Crear la tabla TRABAJADOR
CREATE TABLE Trabajador (
    dniTrabajador CHAR(8) PRIMARY KEY,
    dniSupervisor CHAR(8),
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    telefono CHAR(9) NOT NULL,
    FOREIGN KEY (dniSupervisor) REFERENCES Supervisor(dniSupervisor)
)engine=InnoDB;

-- Crear la tabla TELEFONO
CREATE TABLE Telefono (
    idTelefono INT AUTO_INCREMENT PRIMARY KEY,
    dniFuncionario CHAR(8) NOT NULL,
    telefono CHAR(9) NOT NULL,
    FOREIGN KEY (dniFuncionario) REFERENCES Funcionario(dniFuncionario)
)engine=InnoDB;

-- Crear la tabla JUSTIFICACION
CREATE TABLE Justificacion (
    idJustificacion INT AUTO_INCREMENT PRIMARY KEY,
    dniAdministrador CHAR(8) NOT NULL,
    dniTrabajador CHAR(8) NOT NULL,
    fecha DATE NOT NULL,
    motivo TEXT NOT NULL,
    FOREIGN KEY (dniAdministrador) REFERENCES Administrador(dniAdministrador),
    FOREIGN KEY (dniTrabajador) REFERENCES Trabajador(dniTrabajador)
)engine=InnoDB;

-- Crear la tabla SOLICITUD
CREATE TABLE Solicitud (
    idSolicitud INT AUTO_INCREMENT PRIMARY KEY,
    dniJefeOp CHAR(8) NOT NULL,
    dniSupervisor CHAR(8) NOT NULL,
    motivo TEXT NOT NULL,
    fecha DATE NOT NULL,
    cantTrabajadores INT(2) NOT NULL,
    FOREIGN KEY (dniJefeOp) REFERENCES JefeOperaciones(dniJefeOp),
    FOREIGN KEY (dniSupervisor) REFERENCES Supervisor(dniSupervisor)
)engine=InnoDB;

-- Crear la tabla EQUIVALENTE_EN_HORAS
CREATE TABLE EquivalenteEnHoras (
    dni CHAR(8) not null,
    fecha DATE not null,
    horasAl25 DECIMAL(4,2),
    horasAl35 DECIMAL(4,2),
    horasAl100 DECIMAL(4,2),
    PRIMARY KEY (dni, fecha)
)engine=InnoDB;

-- Crear la tabla REPORTE_DIARIO
CREATE TABLE ReporteDiario (
    idReporteDiario INT AUTO_INCREMENT PRIMARY KEY,
    dniAdministrador CHAR(8) NOT NULL,
    dniSupervisor CHAR(8) NOT NULL,
    contratista VARCHAR(100) NOT NULL,
    turno CHAR(1) NOT NULL,
    horaLaboral TIME NOT NULL,
    clima VARCHAR(50) NOT NULL,
    actividades TEXT NOT NULL,
    revisadoPorJefe VARCHAR(100) NOT NULL,
    revisadoPorSuperVC VARCHAR(100) NOT NULL,
    revisadoPorSupervisor VARCHAR(100) NOT NULL,
    comentariosSupervisor TEXT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (dniAdministrador) REFERENCES Administrador(dniAdministrador),
    FOREIGN KEY (dniSupervisor) REFERENCES Supervisor(dniSupervisor)
)engine=InnoDB;

-- Crear la tabla DETALLE_REPORTE_DIARIO
CREATE TABLE DetalleReporteDiario (
    idDetalleReporteDiario INT AUTO_INCREMENT PRIMARY KEY,
    idReporteDiario INT NOT NULL,
    dni CHAR(8) NOT NULL,
    horaInicio TIME NOT NULL,
    horaTermino TIME NOT NULL,
    horasLaboradas DECIMAL(4,2) NOT NULL,
    horasRegulares DECIMAL(4,2) NOT NULL,
    horasExtra DECIMAL(4,2) NOT NULL,
    motivo TEXT NOT NULL,
    FOREIGN KEY (idReporteDiario) REFERENCES ReporteDiario(idReporteDiario)
)engine=InnoDB;

-- Crear la tabla FORMATO_HORAS_EXTRA
CREATE TABLE FormatoHorasExtra (
    idFormatoHorasExtras INT AUTO_INCREMENT PRIMARY KEY,
    dniAdministrador CHAR(8) NOT NULL,
    dniJefeOp CHAR(8) NOT NULL,
    FOREIGN KEY (dniAdministrador) REFERENCES Administrador(dniAdministrador),
    FOREIGN KEY (dniJefeOp) REFERENCES JefeOperaciones(dniJefeOp)
)engine=InnoDB;

-- Crear la tabla DETALLE_FORMATO_HORAS_EXTRA
CREATE TABLE DetalleFormatoHorasExtra (
    idDetalleExtra INT AUTO_INCREMENT PRIMARY KEY,
    idFormatoHorasExtra INT NOT NULL,
    dni CHAR(8) NOT NULL,
    fecha DATE NOT NULL,
    totalHorasExtra DECIMAL(4,2) NOT NULL,
    FOREIGN KEY (idFormatoHorasExtra) REFERENCES FormatoHorasExtra(idFormatoHorasExtras),
    foreign key (dni, fecha) references EquivalenteEnHoras (dni, fecha)
)engine=InnoDB;

CREATE INDEX idx_cargo_trabajador ON Trabajador (cargo);
CREATE INDEX idx_nombre_apellido_trabajador ON Trabajador (nombres, apellidos);
CREATE INDEX idx_nombre_apellido_funcionario ON Funcionario (nombre, apellidos);
CREATE INDEX idx_telefono ON Telefono (telefono);
CREATE INDEX idx_fecha_reporte_diario ON ReporteDiario (fecha);

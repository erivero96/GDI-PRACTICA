CREATE DATABASE gestion_trabajadores;
USE gestion_trabajadores;

-- Tabla Funcionario
CREATE TABLE funcionario (
    dniFuncionario VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100),
    apellidos VARCHAR(100),
    correo VARCHAR(100)
);

-- Tabla Telefono
CREATE TABLE telefono (
    idTelefono INT AUTO_INCREMENT PRIMARY KEY,
    dniFuncionario VARCHAR(20),
    telefono VARCHAR(15),
    FOREIGN KEY (dniFuncionario) REFERENCES funcionario(dniFuncionario)
);

-- Tabla Supervisor
CREATE TABLE supervisor (
    dniSupervisor VARCHAR(20) PRIMARY KEY,
    numAlmacen INT
);

-- Tabla Administrador
CREATE TABLE administrador (
    dniAdministrador VARCHAR(20) PRIMARY KEY,
    area VARCHAR(100)
);

-- Tabla JefeOperaciones
CREATE TABLE jefe_operaciones (
    dniJefeOp VARCHAR(20) PRIMARY KEY,
    operacion VARCHAR(100)
);

-- Tabla Trabajador
CREATE TABLE trabajador (
    dniTrabajador VARCHAR(20) PRIMARY KEY,
    dniSupervisor VARCHAR(20),
    nombre VARCHAR(100),
    apellidos VARCHAR(100),
    cargo VARCHAR(50),
    telefono VARCHAR(15),
    FOREIGN KEY (dniSupervisor) REFERENCES supervisor(dniSupervisor)
);

-- Tabla Justificacion
CREATE TABLE justificacion (
    idJustificacion INT AUTO_INCREMENT PRIMARY KEY,
    dniAdministrador VARCHAR(20),
    dniTrabajador VARCHAR(20),
    fecha DATE,
    motivo TEXT,
    FOREIGN KEY (dniAdministrador) REFERENCES administrador(dniAdministrador),
    FOREIGN KEY (dniTrabajador) REFERENCES trabajador(dniTrabajador)
);

-- Tabla Solicitud
CREATE TABLE solicitud (
    idSolicitud INT AUTO_INCREMENT PRIMARY KEY,
    dniSupervisor VARCHAR(20),
    motivo TEXT,
    fecha DATE,
    cantTrabajadores INT,
    FOREIGN KEY (dniSupervisor) REFERENCES supervisor(dniSupervisor)
);

-- Tabla ReporteDiario
CREATE TABLE reporte_diario (
    idReporteDiario INT AUTO_INCREMENT PRIMARY KEY,
    dniAdministrador VARCHAR(20),
    dniSupervisor VARCHAR(20),
    contratista VARCHAR(100),
    turno VARCHAR(50),
    horaLaboral TIME,
    clima VARCHAR(50),
    actividades TEXT,
    revisadoPorSe BOOLEAN,
    revisadoPorSuperVC BOOLEAN,
    comentariosSupervisor TEXT,
    fecha DATE,
    FOREIGN KEY (dniAdministrador) REFERENCES administrador(dniAdministrador),
    FOREIGN KEY (dniSupervisor) REFERENCES supervisor(dniSupervisor)
);

-- Tabla DetalleReporteDiario
CREATE TABLE detalle_reporte_diario (
    idDetalleReporteDiario INT AUTO_INCREMENT PRIMARY KEY,
    idReporteDiario INT,
    dni VARCHAR(20),
    horaInicio TIME,
    horaTermino TIME,
    horasRegulares DECIMAL(5, 2),
    horasLaboradas DECIMAL(5, 2),
    horasExtra DECIMAL(5, 2),
    motivo TEXT,
    FOREIGN KEY (idReporteDiario) REFERENCES reporte_diario(idReporteDiario)
);

-- Tabla FormatoHorasExtra
CREATE TABLE formato_horas_extra (
    idFormatoHorasExtra INT AUTO_INCREMENT PRIMARY KEY,
    dniAdministrador VARCHAR(20),
    dniJefeOp VARCHAR(20),
    FOREIGN KEY (dniAdministrador) REFERENCES administrador(dniAdministrador),
    FOREIGN KEY (dniJefeOp) REFERENCES jefe_operaciones(dniJefeOp)
);

-- Tabla DetalleFormatoHorasExtra
CREATE TABLE detalle_formato_horas_extra (
    idDetalleExtra INT AUTO_INCREMENT PRIMARY KEY,
    idFormatoHorasExtra INT,
    dni VARCHAR(20),
    fecha DATE,
    totalHorasExtra DECIMAL(5, 2),
    FOREIGN KEY (idFormatoHorasExtra) REFERENCES formato_horas_extra(idFormatoHorasExtra)
);

-- Tabla HorasExtrasAl25
CREATE TABLE horas_extras_al_25 (
    fecha DATE,
    horasAl25 DECIMAL(5, 2),
    PRIMARY KEY (fecha)
);

-- Tabla HorasExtrasAl35
CREATE TABLE horas_extras_al_35 (
    fecha DATE,
    horasAl35 DECIMAL(5, 2),
    PRIMARY KEY (fecha)
);

-- Tabla HorasExtrasAl100
CREATE TABLE horas_extras_al_100 (
    fecha DATE,
    horasAl100 DECIMAL(5, 2),
    PRIMARY KEY (fecha)
);

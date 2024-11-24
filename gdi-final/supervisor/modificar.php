<?php
include_once '../clases/conexion.php';

$conexion = new Conexion();  // Instancia de la clase Conexion

if (isset($_GET['id'])) {
    $idReporteDiario = $_GET['id'];  // Obtenemos el ID del reporte desde la URL

    // Consulta SQL para obtener los detalles del reporte
    $sql = "SELECT * FROM reportediario WHERE idReporteDiario = $idReporteDiario";
    $detalles = $conexion->obtenerDatos($sql);

    function formatearHora($hora) {
        return date("H:i", strtotime($hora));  // Formatear hora en formato HH:MM
    }
} else {
    echo "No se ha especificado un reporte.";
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $dniAdministrador = $_POST['dniAdministrador'];
    $dniSupervisor = $_POST['dniSupervisor'];
    $contratista = $_POST['contratista'];
    $turno = $_POST['turno'];
    $horaLaboral = $_POST['horaLaboral'];
    $clima = $_POST['clima'];
    $actividades = $_POST['actividades'];
    $revisadoPorJefe = $_POST['revisadoPorJefe'];
    $revisadoPorSuperVC = $_POST['revisadoPorSuperVC'];
    $revisadoPorSupervisor = $_POST['revisadoPorSupervisor'];
    $comentariosSupervisor = $_POST['comentariosSupervisor'];
    $fecha = $_POST['fecha'];

    $sql = "CALL ModificarReporteDiario(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param(
        "issssssssssss",
        $idReporteDiario,
        $dniAdministrador,
        $dniSupervisor,
        $contratista,
        $turno,
        $horaLaboral,
        $clima,
        $actividades,
        $revisadoPorJefe,
        $revisadoPorSuperVC,
        $revisadoPorSupervisor,
        $comentariosSupervisor,
        $fecha
    );

    if ($stmt->execute()) {
        echo "Reporte actualizado correctamente.";
    } else {
        echo "Error al actualizar el reporte: " . $stmt->error;
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Detalles del Reporte</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

<header>
    <h1>Sistema de Control de Sobretiempos</h1>
    <div class="navbar">
        <a href="super-menu.html">Menu Principal</a>
        <a href="listar-reporte.php">Lista de Reportes</a>
        <a href="nuevo-reporte.php">Nuevo Reporte Diario</a>
        <a href="modificar-reporte.php">Modificar Reporte Diario</a>
        <a href="../logout.php">Salir</a>
    </div>
</header>

<center>
    <div class="contenido-reporte">
    <form action="" method="POST">
        <h2>Detalles del Reporte</h2>
        
        <?php if (!empty($detalles)): ?>
            <?php foreach ($detalles as $detalle): ?>
                <div class="detalle">
                    <div class="form-group">
                        <label for="dniAdministrador">Dni Administrador:</label>
                        <input type="text" name="dniAdministrador" value="<?php echo $detalle['dniAdministrador']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="dniSupervisor">DNI Supervisor:</label>
                        <input type="text" name="dniSupervisor" value="<?php echo $detalle['dniSupervisor']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="contratista">Contratista:</label>
                        <input type="text" name="contratista" value="<?php echo $detalle['contratista']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="turno">Turno:</label>
                        <input type="text" name="turno" value="<?php echo $detalle['turno']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="horaLaboral">Hora Laboral:</label>
                        <input type="text" name="horaLaboral" value="<?php echo formatearHora($detalle['horaLaboral']); ?>">
                    </div>
                    <div class="form-group">
                        <label for="clima">Clima:</label>
                        <input type="text" name="clima" value="<?php echo $detalle['clima']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="actividades">Actividades:</label>
                        <input type="text" name="actividades" value="<?php echo $detalle['actividades']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="revisadoPorJefe">Revisado por Jefe:</label>
                        <input type="text" name="revisadoPorJefe" value="<?php echo $detalle['revisadoPorJefe']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="revisadoPorSuperVC">Revisado por SuperVC:</label>
                        <input type="text" name="revisadoPorSuperVC" value="<?php echo $detalle['revisadoPorSuperVC']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="revisadoPorSupervisor">Revisado por Supervisor:</label>
                        <input type="text" name="revisadoPorSupervisor" value="<?php echo $detalle['revisadoPorSupervisor']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="comentariosSupervisor">Comentarios del Supervisor:</label>
                        <input type="text" name="comentariosSupervisor" value="<?php echo $detalle['comentariosSupervisor']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="fecha">Fecha:</label>
                        <input type="text" name="fecha" value="<?php echo $detalle['fecha']; ?>">
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p>No se encontraron detalles para este reporte.</p>
        <?php endif; ?>

        <button type="submit" class="btn-comun ">Confirmar Cambios</button>
    </form>
    </div>
</center>

</body>
</html>
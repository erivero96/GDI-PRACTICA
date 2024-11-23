<?php
include_once '../clases/conexion.php';

$conexion = new Conexion();  // Instancia de la clase Conexion

if (isset($_GET['id'])) {
    $idReporteDiario = $_GET['id'];  // Obtenemos el ID del reporte desde la URL

    // Consulta SQL para obtener los detalles del reporte
    $sql = "SELECT * FROM DetalleReporteDiario WHERE idReporteDiario = $idReporteDiario";
    $detalles = $conexion->obtenerDatos($sql);

    function formatearHora($hora) {
        return date("H:i", strtotime($hora));  // Formatear hora en formato HH:MM
    }
} else {
    echo "No se ha especificado un reporte.";
    exit;
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
        <a href="../logout.php">Salir</a>
    </div>
</header>

<center>
    <div class="reporte-detalle">
        <h2>Detalles del Reporte</h2>
        
        <?php if (!empty($detalles)): ?>
            <?php foreach ($detalles as $detalle): ?>
                <div class="detalle">
                    <p><strong>Trabajador DNI:</strong> <?php echo $detalle['dni']; ?></p>
                    <p><strong>Hora de inicio:</strong> <?php echo formatearHora($detalle['horaInicio']); ?></p>
                    <p><strong>Hora de término:</strong> <?php echo formatearHora($detalle['horaTermino']); ?></p>
                    <p><strong>Horas extra:</strong> <?php echo $detalle['horasExtra']; ?></p>
                    <p><strong>Motivo:</strong> <?php echo $detalle['motivo']; ?></p>
                    <br><br>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p>No se encontraron detalles para este reporte.</p>
        <?php endif; ?>
    </div>
</center>

</body>
</html>

<?php
include_once '../clases/conexion.php';

$conexion = new Conexion();

$reportes = []; // Inicializar variable para los reportes

// Verificar si se ha enviado una fecha
if (isset($_POST['reportDate']) && $_POST['reportDate'] != '') {
    $reportDate = $_POST['reportDate'];
    // Llamar al procedimiento almacenado con la fecha proporcionada
    $sql = "CALL obtener_reportes(?)";
    $stmt = $conexion->prepare($sql); // Preparar la consulta
    $stmt->bind_param('s', $reportDate); // Vincular el parámetro de fecha
    $stmt->execute(); // Ejecutar la consulta
    $result = $stmt->get_result(); // Obtener el resultado
    $reportes = $result->fetch_all(MYSQLI_ASSOC); // Guardar los reportes
} else {
    // Llamar al procedimiento almacenado sin parámetros para obtener todos los reportes
    $sql = "CALL obtener_reportes(NULL)";
    $stmt = $conexion->prepare($sql); // Preparar la consulta
    $stmt->execute(); // Ejecutar la consulta
    $result = $stmt->get_result(); // Obtener el resultado
    $reportes = $result->fetch_all(MYSQLI_ASSOC); // Guardar los reportes
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Control de Sobretiempos</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

<header>
    <h1>Sistema de Control de Sobretiempos</h1>
    <div class="navbar">
        <a href="super-menu.html">Menu Principal</a>
        <a href="nuevo-reporte.html">Nuevo Reporte Diario</a>
        <a href="modificar-reporte.html">Modificar Reporte Diario</a>
        <a href="../logout.php">Salir</a>
    </div>
</header>

<center>
    <div class="listar-reporte">
        <h2>Lista de Reportes Diarios</h2>
        <br>
        <form action="listar-reporte.php" method="post">
            <label for="reportDate">Seleccione la fecha del reporte:</label>
            <input type="date" id="reportDate" name="reportDate">
            <button type="submit" class="btn btn-primary">Buscar Reporte</button>
        </form>
        <br>

        <table class="table">
            <thead>
                <tr>
                    <th>ID Reporte</th>
                    <th>Fecha</th>
                    <th>Contratista</th>
                    <th>Acción</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($reportes)): ?>
                    <?php foreach ($reportes as $reporte): ?>
                        <tr>
                            <td><?php echo $reporte['idReporteDiario']; ?></td>
                            <td><?php echo $reporte['fecha']; ?></td>
                            <td><?php echo $reporte['contratista']; ?></td>
                            <td>
                                <a href="listar-detalle-reporte.php?id=<?php echo $reporte['idReporteDiario']; ?>" class="btn btn-info">Ver Detalle</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="4">No se encontraron reportes.</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</center>

</body>
</html>

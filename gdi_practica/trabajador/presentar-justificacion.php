<?php
include_once '../clases/conexion.php';

$conexion = new Conexion();

$success_msg = '';
$error_msg = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Validación de datos del formulario
    $dniAdministrador = $_POST['dniAdministrador'];
    $dniTrabajador = $_POST['dniTrabajador'];
    $fecha = $_POST['fecha'];
    $motivo = $_POST['motivo'];

    try {
        // Preparar la llamada al procedimiento almacenado
        $sql = "CALL insertar_justificacion(?, ?, ?, ?)";
        $stmt = $conexion->prepare($sql);
        $stmt->bind_param('ssss', $dniAdministrador, $dniTrabajador, $fecha, $motivo);

        if ($stmt->execute()) {
            $success_msg = "Justificación ingresada correctamente.";
        } else {
            $error_msg = "Error al ingresar la justificación.";
        }
    } catch (Exception $e) {
        $error_msg = "Excepción: " . $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Control de Sobretiempos - Justificación</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        .message {
            padding: 10px;
            font-size: 15px;
            color: black;
        }
    </style>
</head>
<body>

<header>
    <h1>Sistema de Control de Sobretiempos</h1>
    <div class="navbar">
        <a href="trabajador-menu.html">Menú Principal</a>
        <a href="../logout.php">Salir</a>
    </div>
</header>

<center>
    <!-- Mensaje de éxito o error -->
    <div class="message">
        <?php if ($success_msg) echo "<div class='alert alert-success'>$success_msg</div>"; ?>
        <?php if ($error_msg) echo "<div class='alert alert-danger'>$error_msg</div>"; ?>
    </div>

    <!-- Formulario para ingresar justificación -->
    <div class="contenido-reporte">
        <h2>Ingresar Justificación</h2>
        <form action="presentar-justificacion.php" method="post">
            <table>
                <tr>
                    <td>DNI Administrador:</td>
                    <td><input type="text" name="dniAdministrador" maxlength="8" required></td>
                </tr>
                <tr>
                    <td>DNI Trabajador:</td>
                    <td><input type="text" name="dniTrabajador" maxlength="8" required></td>
                </tr>
                <tr>
                    <td>Fecha:</td>
                    <td><input type="date" name="fecha" required></td>
                </tr>
                <tr>
                    <td>Motivo:</td>
                    <td><textarea name="motivo" rows="4" required></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Ingresar Justificación" class="btn btn-primary">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</center>

</body>
</html>

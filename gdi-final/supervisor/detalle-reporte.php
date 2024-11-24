<?php
    require_once "../clases/conexion.php";

    $conexion = new Conexion();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        try {
            $idReporteDiario = $_POST['idReporteDiario'];
            $dni = $_POST['dni'];
            $horaInicio = $_POST['horaInicio'];
            $horaTermino = $_POST['horaTermino'];
            $horasLaboradas = $_POST['horasLaboradas'];
            $horasRegulares = $_POST['horasRegulares'];
            $horasExtra = $_POST['horasExtra'];

            // Consulta preparada con placeholders posicionales
            $sql = "CALL InsertarDetalleReporteDiario( ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $conexion->prepare($sql);

            // Vincular parámetros posicionalmente
            $stmt->bind_param(
                'isssiiis',
                $idReporteDiario,
                $dni,
                $horaInicio,
                $horaTermino,
                $horasLaboradas,
                $horasRegulares,
                $horasExtra,
            );


            // Ejecutar la consulta
            if ($stmt->execute()) {
                echo "<div class='message'>Reporte insertado correctamente</div>";
            } else {
                throw new Exception("Error al ejecutar la consulta: " . $stmt->error);
            }
        } catch (Exception $e) {
            echo "<div class='message'>Error: " . $e->getMessage() . "</div>";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<!-- head started -->
<head>
<title>Control de Sobretiempos</title>
<meta charset="UTF-8">

    <link rel="stylesheet" type="text/css" href="../css/main.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

    <link rel="stylesheet" href="styles.css" >

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">

    .message{
        padding: 10px;
        font-size: 15px;
        font-style: bold;
        color: black;
    }
</style>
</head>
<!-- head ended -->

<!-- body started -->
<body>

        <!-- Menus started-->
        <header>

            <h1>Sistema de Control de Sobretiempos</h1>
            <div class="navbar">
            <a href="super-menu.html">Menu Principal</a>
            <a href="listar-reporte.php">Listar Reportes Diarios</a>
            <a href="modificar-reporte.php">Modificar Reporte Diario</a>
            <a href="../logout.php">Salir</a>

        </div>

        </header>
        <!-- Menus ended -->

<center>
<!-- Error or Success Message printing started -->
<div class="message">
                <?php if(isset($success_msg)) echo $success_msg; if(isset($error_msg)) echo $error_msg; ?>
</div>
<!-- Error or Success Message printing ended -->

<!-- Content, Tables, Forms, Texts, Images started -->
<div class="contenido-reporte">

    <form action="" method="POST">
        <div class="form-group">
            <label for="idReporteDiario">ID Reporte Diario:</label>
            <input type="number" class="form-control" id="idReporteDiario" name="idReporteDiario" required>
        </div>
        <div class="form-group">
            <label for="dni">DNI:</label>
            <input type="text" class="form-control" id="dni" name="dni" maxlength="8" required>
        </div>
        <div class="form-group">
            <label for="horaInicio">Hora Inicio:</label>
            <input type="text" class="form-control" id="horaInicio" name="horaInicio" required>
        </div>
        <div class="form-group">
            <label for="horaTermino">Hora Termino:</label>
            <input type="text" class="form-control" id="horaTermino" name="horaTermino" required>
        </div>
        <div class="form-group">
            <label for="horasLaboradas">Horas Laboradas:</label>
            <input type="number" step="0.01" class="form-control" id="horasLaboradas" name="horasLaboradas" required>
        </div>
        <div class="form-group">
            <label for="horasRegulares">Horas Regulares:</label>
            <input type="number" step="0.01" class="form-control" id="horasRegulares" name="horasRegulares" required>
        </div>
        <div class="form-group">
            <label for="horasExtra">Horas Extra:</label>
            <input type="number" step="0.01" class="form-control" id="horasExtra" name="horasExtra" required>
        </div>
        <div class="form-group">
            <label for="motivo">Motivo:</label>
            <textarea class="form-control" id="motivo" name="motivo" required></textarea>
        </div>
        <button type="submit" class="btn-comun ">Agregar</button>
        <button type="agregar" class="btn-comun ">Enviar</button>
    </form>

</div><br>
<!-- Contents, Tables, Forms, Images ended -->

</center>
</body>
<!-- Body ended  -->
</html>

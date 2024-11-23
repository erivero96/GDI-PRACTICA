<?php
require_once "../clases/conexion.php";

$conexion = new Conexion();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
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

        echo "<script>console.log('Hora Laboral: " . $horaLaboral . "');</script>";

        if (!preg_match("/^[0-9]{8}$/", $dniAdministrador)) {
            echo "<div class='message'>El DNI del administrador debe contener 8 dígitos</div>";
            exit;
        }

        // Consulta preparada con placeholders posicionales
        $sql = "CALL insertar_reporte(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $conexion->prepare($sql);

        // Vincular parámetros posicionalmente
        $stmt->bind_param(
            'ssssssssssss',
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
            <a href="listar-reporte.html">Listar Reportes Diarios</a>
            <a href="modificar-reporte.html">Modificar Reporte Diario</a>
            <a href="../logout.php">Salir</a>

        </div>

        </header>
        <!-- Menus ended -->
<center>
<div class="contenido-reporte">
    <form action="" method="POST">
        <div class="form-group">
            <label for="dniAdministrador">DNI Administrador:</label>
            <input type="text" class="form-control" id="dniAdministrador" name="dniAdministrador" maxlength="8" required>
        </div>
        <div class="form-group">
            <label for="dniSupervisor">DNI Supervisor:</label>
            <input type="text" class="form-control" id="dniSupervisor" name="dniSupervisor" maxlength="8" required>
        </div>
        <div class="form-group">
            <label for="contratista">Contratista:</label>
            <input type="text" class="form-control" id="contratista" name="contratista" required>
        </div>
        <div class="form-group">
            <label for="turno">Turno:</label>
            <input type="text" class="form-control" id="turno" name="turno" maxlength="1" required>
        </div>
        <div class="form-group">
            <label for="horaLaboral">Hora Laboral:</label>
            <input type="text" class="form-control" id="horaLaboral" name="horaLaboral" required>
        </div>
        <div class="form-group">
            <label for="clima">Clima:</label>
            <input type="text" class="form-control" id="clima" name="clima" required>
        </div>
        <div class="form-group">
            <label for="actividades">Actividades:</label>
            <textarea class="form-control" id="actividades" name="actividades" required></textarea>
        </div>
        <div class="form-group">
            <label for="revisadoPorJefe">Revisado por Jefe:</label>
            <input type="text" class="form-control" id="revisadoPorJefe" name="revisadoPorJefe" required>
        </div>
        <div class="form-group">
            <label for="revisadoPorSuperVC">Revisado por SuperVC:</label>
            <input type="text" class="form-control" id="revisadoPorSuperVC" name="revisadoPorSuperVC" required>
        </div>
        <div class="form-group">
            <label for="revisadoPorSupervisor">Revisado por Supervisor:</label>
            <input type="text" class="form-control" id="revisadoPorSupervisor" name="revisadoPorSupervisor" required>
        </div>
        <div class="form-group">
            <label for="comentariosSupervisor">Comentarios del Supervisor:</label>
            <textarea class="form-control" id="comentariosSupervisor" name="comentariosSupervisor" required></textarea>
        </div>
        <div class="form-group">
            <label for="fecha">Fecha:</label>
            <input type="text" class="form-control" id="fecha" name="fecha" required>
        </div>
        <button type="submit" class="btn-comun ">Continuar</button>
        <a href="super-menu.html" class="btn-comun">Cancelar</a>
    </form>

</div>

</center>
</body>
<!-- Body ended  -->
</html>

<?php
    require_once "../clases/conexion.php";

    $conexion = new Conexion();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

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
            <a href="nuevo-reporte.html">Nuevo Reporte Diario</a>
            <a href="modificar-reporte.html">Modificar Reporte Diario</a>
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
<div class="listar-reporte">
        <h2>Lista de Reportes Diarios</h2>
        <br>
            <form action="listar-reporte.php" method="post">
                <label for="reportDate">Seleccione la fecha del reporte:</label>
                <input type="date" id="reportDate" name="reportDate" required>
                <button type="submit" class="btn-comun">Buscar Reporte</button>
            </form>

</div><br>
<!-- Contents, Tables, Forms, Images ended -->

</center>
</body>
<!-- Body ended  -->
</html>

<?php
session_start();
require_once 'clases/conexion.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
 
    if (isset($_POST['type'])) {
        $dni = $_POST['username'];
        $password = $_POST['password'];
        $role = $_POST['type'];

        if ($role === 'supervisor') {
            $conexion = new Conexion();
            $query = "SELECT * FROM Supervisor WHERE dniSupervisor = ?";
            $stmt = $conexion->prepare($query);

            try {
                $conexion->bindAndExecute($stmt, [$dni]);
                $result = $stmt->get_result();

                if ($result->num_rows > 0) {
                    $_SESSION['usuario'] = $dni;
                    $_SESSION['rol'] = $role;
                    header('Location: supervisor/super-menu.html');
                    exit();
                } else {
                    echo '<p style="color: red;">El DNI ingresado no corresponde a un supervisor de la empresa.</p>';
                }
            } catch (Exception $e) {
                echo '<p style="color: red;">Error al procesar la solicitud: ' . $e->getMessage() . '</p>';
            }
        } elseif ($role === 'trabajador') {
            $conexion = new Conexion();
            $query = "SELECT * FROM trabajador WHERE dniTrabajador = ?";
            $stmt = $conexion->prepare($query);

            try {
                $conexion->bindAndExecute($stmt, [$dni]);
                $result = $stmt->get_result();

                if ($result->num_rows > 0) {
                    $_SESSION['usuario'] = $dni;
                    $_SESSION['rol'] = $role;
                    header('Location: trabajador/trabajador-menu.html');
                    exit();
                } else {
                    echo '<p style="color: red;">El DNI ingresado no corresponde a un trabajador de la empresa.</p>';
                }
            } catch (Exception $e) {
                echo '<p style="color: red;">Error al procesar la solicitud: ' . $e->getMessage() . '</p>';
            }
        } else {
            echo '<p style="color: red;">Selecciona un rol válido para continuar.</p>';
        }
    } else {
        echo '<p style="color: red;">Por favor, selecciona un rol.</p>';
    }
} else {
    echo '<p style="color: red;">Método de solicitud no permitido.</p>';
}
?>
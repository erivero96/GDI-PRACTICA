<?php
require_once "clases/conexion.php";

$conexion = new conexion;

$query = "SELECT * FROM administrador";

print_r($conexion->obtenerDatos($query));


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = json_decode(file_get_contents("php://input"), true);

    if (isset($input['accion']) && $input['accion'] === 'insertar_trabajador') {
        $conexion = Conexion::conectar();

        $query = "CALL insertar_trabajador(:dniTrabajador, :dniSupervisor, :nombre, :apellidos, :cargo, :telefono)";
        $stmt = $conexion->prepare($query);
        $stmt->bindParam(':dniTrabajador', $input['dniTrabajador']);
        $stmt->bindParam(':dniSupervisor', $input['dniSupervisor']);
        $stmt->bindParam(':nombre', $input['nombre']);
        $stmt->bindParam(':apellidos', $input['apellidos']);
        $stmt->bindParam(':cargo', $input['cargo']);
        $stmt->bindParam(':telefono', $input['telefono']);

        try {
            $stmt->execute();
            echo json_encode(['mensaje' => 'Trabajador insertado correctamente']);
        } catch (PDOException $e) {
            echo json_encode(['error' => $e->getMessage()]);
        }
    }
}



?>
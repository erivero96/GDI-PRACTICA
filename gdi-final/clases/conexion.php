<?php

class Conexion {
    private $server;
    private $username;
    private $password;
    private $database;
    private $port;
    private $conexion;

    function __construct() {
        $listadatos = $this->datosConexion();
        foreach ($listadatos as $key => $value) {
            $this->server = $value["server"];
            $this->username = $value["user"];
            $this->password = $value["password"];
            $this->database = $value["database"];
            $this->port = $value["port"];
        }

        $this->conexion = new mysqli($this->server, $this->username, $this->password, $this->database, $this->port);

        if ($this->conexion->connect_error) {
            die("Error de conexión: " . $this->conexion->connect_error);
        }
    }

    private function datosConexion() {
        $direccion = dirname(__FILE__) . "/";
        $jsondata = file_get_contents($direccion . "config");
        return json_decode($jsondata, true);
    }

    private function convertirUTF8($array) {
        array_walk_recursive($array, function (&$item, $key) {
            if (!mb_detect_encoding($item, 'utf-8', true)) {
                $item = utf8_encode($item);
            }
        });

        return $array;
    }

    public function obtenerDatos($sqlstr) {
        $results = $this->conexion->query($sqlstr);
        $resultArray = array();

        foreach ($results as $key) {
            $resultArray[] = $key;
        }

        return $this->convertirUTF8($resultArray);
    }

    public function nonQuery($sqlstr) {
        $results = $this->conexion->query($sqlstr);
        return $this->conexion->affected_rows;
    }

    public function prepare($sqlstr) {
        $stmt = $this->conexion->prepare($sqlstr);
        if ($stmt === false) {
            throw new Exception("Error al preparar la consulta SQL: " . $this->conexion->error);
        }
        return $stmt;
    }

    public function bindAndExecute($stmt, $params) {
        $types = '';
        foreach ($params as $param) {
            if (is_int($param)) {
                $types .= 'i';
            } elseif (is_double($param)) {
                $types .= 'd';
            } elseif (is_string($param)) {
                $types .= 's';
            } else {
                $types .= 'b';
            }
        }

        $stmt->bind_param($types, ...$params);

        if (!$stmt->execute()) {
            throw new Exception("Error al ejecutar la consulta: " . $stmt->error);
        }

        return $stmt;
    }
}

?>

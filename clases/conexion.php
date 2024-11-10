<?php

class conexion {
    private $server;
    private $username;
    private $password;
    private $database;
    private $port;
    private $conexion;

    function __construct() {
        $listadatos = $this->datosConexion();
        foreach( $listadatos as $key => $value ) {
            $this->server = $value["server"];
            $this->username = $value["user"];
            $this->password = $value["password"];
            $this->database = $value["database"];
            $this->port = $value["port"];
        }

        $this->conexion = new mysqli($this->server, $this->username, $this->password, $this->database, $this->port);

        if($this->conexion->connect_error) {
            echo "Fallo la conexion";
            die();
        }
    }

    private function  datosConexion() {
        $direccion = dirname(__FILE__)."";
        $jsondata = file_get_contents($direccion."/config");
        return json_decode($jsondata, true);
    }
}


?>
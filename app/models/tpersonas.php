<?php
require_once "config/conexion.php";

class Tpersonas{
    private $db; //Instancia de la conexion con la base de datos

    public function __construct(){
        $this->db = Conexion::getInstance()->getConnection();
    }

    public function registrar($nombre, $IDTipoDoc, $numDocumento, $direccion, $telefono, $IDgenero, $estado){
        $stmt = $this->db->prepare("INSERT INTO tpersonas (nombre, IDtipoDoc, numDocumento,direccion,telefono,IDgenero,estado)VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->execute([$nombre, $IDTipoDoc, $numDocumento, $direccion, $telefono, $IDgenero, $estado]);
        echo"Registrao";
    }

}
?>
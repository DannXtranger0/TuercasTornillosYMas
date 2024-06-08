<?php
require_once "config/conexion.php";

class Ttrabajadores{
    private $db; //Instancia de la conexion con la base de datos

    public function __construct(){
        $this->db = Conexion::getInstance()->getConnection();
    }

    public function registrar($usuario, $contrasenia, $IDrol, $IDpersona){
        $stmt = $this->db->prepare("INSERT INTO ttrabajadores (usuario, contrasenia, IDrol, IDpersona,telefono)VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->execute([$usuario, $contrasenia, $IDrol, $IDpersona]);
        echo"Registrao";
    }

    // public function login($usuario, $contrasenia){
    //     if($_SERVER["REQUEST_METHOD"] == "POST"){
            
    //     }
    // }

    public function verificar($usuario, $contrasenia)
    {
        $stmt = $this->db->prepare("SELECT * FROM ttrabajadores WHERE usuario = ? and contrasenia = ?");
        $stmt->execute([$usuario, $contrasenia]);
        $usuario = $stmt->fetch(PDO::FETCH_ASSOC);
        return $usuario;
    }
    
}
?>
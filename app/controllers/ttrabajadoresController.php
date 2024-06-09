<?php
class TtrabajadoresController {

    /*modelo*/
    private $model;

    public function __construct() {
        $this->model = new Ttrabajadores();
    }

    public function login() 
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {          
            $usuario = $_POST["usuario"];
            $contrasenia = $_POST["contrasenia"];
            $verificacion = $this->model->verificar($usuario, $contrasenia);
            
            if ($verificacion) {
                $_SESSION['usuario'] = $verificacion;
                header("Location: inicio");
            } else {
                header("Location: err");
            }
        } else {
            require "app/views/login.php";
        }
    }
}
?>

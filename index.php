<?php
session_start();

require_once "app/models/ttrabajadores.php";
require_once "app/controllers/ttrabajadoresController.php";

$ttrabajadoresController = new TtrabajadoresController();


$request = $_SERVER['REQUEST_URI'];

switch( $request) {
    case "/TuercasTornillosY+/":
        if(!isset($_SESSION['usuario'])){
            $ttrabajadoresController ->login();
            break;
    }
    
    case "/TuercasTornillosY+/login":
        $ttrabajadoresController ->login();
        break;
    

    case "/TuercasTornillosY+/inicio":
        require "app/views/pruebalogin.php";
        break;
        
    case "/TuercasTornillosY+/err":
        require "app/views/pruebaloginerror.php";
        break;

    default:
        // Muestra un mensaje de error o una página 404
        http_response_code(404);
        echo '<h1>404</h1> Página no encontrada';
        break;

    }
      
?>

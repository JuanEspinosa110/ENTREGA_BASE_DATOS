<?php 

require '../config/database.php';
$db = new Database();
$con = $db->conectar();
session_start();


if($_POST["inicio"])
{

    $doc_us = $_POST['documento'];  
    $contrasena = $_POST['clave'];  

    
    $sql = $con->prepare("SELECT * FROM usuario WHERE doc_us = '$doc_us' AND contrasena = '$contrasena'");
    
    $sql -> execute();
    
    $fila = $sql -> fetch(); 

    if ($fila){
        $_SESSION['doc_us'] = $fila['doc_us'];
        $_SESSION['tipo'] = $fila['id_tip_us'];

        if($_SESSION['tipo'] == 3){
            header("Location: ../cajero.php");
        }

}

    else {
        echo "<script>alert('Usuario o clave incorrectos');</script>";
    }
}

else {
}
?>
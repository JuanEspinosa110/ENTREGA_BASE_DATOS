<?php
require_once("config/database.php");
 $db = new database;
 $con = $db-> conectar();
session_start();


 $doc_us = $_SESSION['doc_us'];


 $sql = $con ->prepare("SELECT * from usuario inner join tipo_us on usuario.id_tip_us = tipo_us.id_tip_us where usuario.doc_us = '$doc_us' ") ;
 $sql -> execute();
 $fila = $sql -> fetch(); 
 ?>
<?php
if (isset($_GET['cerrar_sesion'])) {
    session_destroy();
    header("location:index.html");
    exit;
} 
?>

 <!DOCTYPE html>
 <html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
 </head>
 <body>
  
<h1>Bienvenido señ@r <?php echo $fila['nombre']; ?> su rol es <?php echo $fila['tip_us'];?></h1>
    <form method="GET">
        <button type="submit" name="cerrar_sesion">Cerrar Sesión</button>
    </form>

 </body>
 </html>
 
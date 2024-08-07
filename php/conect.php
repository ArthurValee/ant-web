<?php
     $hostname = "viaduct.proxy.rlwy.net:41812";
     $bancodedados = "antmultimarcas";
     $usuario = "root";
     $senha = "MkbVLIqjgwNsGmCKxESctplekhstPOVY";

     $inptlog = filter_input(INPUT_POST, 'login');
     $inptsen = filter_input(INPUT_POST, 'senhas');


     $mysqli = new mysqli($hostname, $usuario, $senha, $bancodedados);
     if ($mysqli->connect_errno) {
        echo "falha ao conectar:(" . $mysqli->connect_errno . ")" . $mysqli->connect_errno;
     } 
     else { // logado apos entrar no banco de dados

      if($_SERVER["REQUEST_METHOD"]=="POST")
      {
        $logindb= filter_input(INPUT_POST, 'login');
        $senhadb = filter_input(INPUT_POST, 'senhas');

        $sql="select * from logins where Login= '".$logindb."' AND Senhas= '".$senhadb."' ";

        $result=mysqli_query($mysqli, $sql);

        $row=mysqli_fetch_array($result);
        $rowstring = implode($row);

        if($rowstring === null){
         echo "Voce nao é um admin";
        } else {
         // header('Location: estoque.php');
         include 'estoque.php';
         ///////////////////////////////////////////////////////////////////////////////////////////



         ////////////////////////////////////////////////////////////////////////////////////////////
        }
     }
   }







?>
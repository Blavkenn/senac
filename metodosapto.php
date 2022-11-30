<?php
include("conexao.php");

$query = "select * from apartamento"; 
$result_query = mysqli_query( $conn, $query );

echo "<table>";
# Exibe os registros na tela 
while ($row = mysqli_fetch_array( $result_query ))
{ 
      echo "<tr>";
      print "<td>" . $row[1] . "<td>" . $row[2] . "<td>" . $row[3];
      echo "</tr>";
}          
echo "</table>";

mysqli_close($conn);



function listaapartamentos(){

      $query = "select * from apartamento"; 
      $result_query = mysqli_query( $conn, $query );
      
      echo "<table>";
      # Exibe os registros na tela 
      while ($row = mysqli_fetch_array( $result_query ))
      { 
            echo "<tr>";
            print "<td>" . $row[1] . "<td>" . $row[2] . "<td>" . $row[3];
            echo "</tr>";
      }          
      echo "</table>";

      mysqli_close($conn);
    
   }

function insertapartamento($area,$numero,$codigomorador,$codigoedificio){

   $query = "INSERT INTO apartamento (area_apto, numero_apto, codigo_morador, codigo_edificio) VALUES ('$area','$numero','$codigomorador','$codigoedificio')";
   $insert = mysql_query($query,$connect);

   if($insert){
       echo"<script language='javascript' type='text/javascript'>
       alert('Apartamento cadastrado com sucesso!');window.location.
       href='index.html'</script>";
     }else{
       echo"<script language='javascript' type='text/javascript'>
       alert('Não foi possível cadastrar esse apartamento');window.location
       .href='cadastrapto.html'</script>";
     }
}

?>
<?php

include("conexao.php");

$area = $_POST['area'];
$numero = $_POST['numero'];
$codigomorador = $_POST['codigomorador'];
$codigoedificio = $_POST['codigoedificio'];

if($codigoedificio == "" || $codigoedificio == null)
{
    echo "Codigo do Edificio não pode estar vazio!";
}
else
{
    $query = "INSERT INTO apartamento (area_apto, numero_apto, codigo_morador, codigo_edificio) VALUES ('$area','$numero','$codigomorador','$codigoedificio')";
    $insert = mysqli_query($conn,$query);

    //echo $query;

    
    if($insert){
        echo"<script language='javascript' type='text/javascript'>
        alert('Apartamento cadastrado com sucesso!');window.location.
        href='index.html'</script>";
      }else{
        echo"<script language='javascript' type='text/javascript'>
        alert('Não foi possível cadastrar esse apartamento');window.location
        .href='cadastroapto.html'</script>";
      }

}


?>
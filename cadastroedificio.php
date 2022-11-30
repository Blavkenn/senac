<?php

include("conexao.php");

$codigoedificio = $_POST['codigoedificio'];
$cep = $_POST['cep'];
$numero = $_POST['numero'];
$complemento = $_POST['complemento'];
$datavistoria = $_POST['datavistoria'];
$dataconstrucao = $_POST['dataconstrucao'];

if($codigoedificio == "" || $codigoedificio == null)
{
    echo "Codigo do Edificio não pode estar vazio!";
}
else
{
    $query = "INSERT INTO edificio (codigo_edificio, cep, numero, complemento, data_vistoria, data_construcao) VALUES ('$codigoedificio','$cep','$numero','$complemento','$datavistoria','$dataconstrucao')";
    $insert = mysqli_query($conn,$query);

    //echo $query;

    
    if($insert){
        echo"<script language='javascript' type='text/javascript'>
        alert('Edificio cadastrado com sucesso!');window.location.
        href='index.html'</script>";
      }else{
        echo"<script language='javascript' type='text/javascript'>
        alert('Não foi possível cadastrar esse edificio');window.location
        .href='cadastroedificio.html'</script>";
      }

}


?>
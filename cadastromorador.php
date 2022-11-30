<?php

include("conexao.php");

$codigomorador = $_POST['codigomorador'];
$nome = $_POST['nome'];
$cep = $_POST['cep'];
$datanascimento = $_POST['datanascimento'];
$cpf = $_POST['cpf'];
$sexo = $_POST['sexo'];

if($codigomorador == "" || $codigomorador == null)
{
    echo "Codigo do Morador não pode estar vazio!";
}
else
{
    $query = "INSERT INTO morador (codigo_morador, nome, cep, data_nascimento, cpf, sexo) VALUES ('$codigomorador','$nome','$cep','$datanascimento','$cpf','$sexo')";
    $insert = mysqli_query($conn,$query);

    //echo $query;

    
    if($insert){
        echo"<script language='javascript' type='text/javascript'>
        alert('Morador cadastrado com sucesso!');window.location.
        href='index.html'</script>";
      }else{
        echo"<script language='javascript' type='text/javascript'>
        alert('Não foi possível cadastrar esse morador');window.location
        .href='cadastromorador.html'</script>";
      }

}


?>
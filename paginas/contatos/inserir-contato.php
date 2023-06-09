<head>
    <h3>Inserir Contato</h3>
</head>
<?php

    $nomeContato = mysqli_real_escape_string($conexao, $_POST["nomeContato"]);
    $emailContato = mysqli_real_escape_string($conexao, $_POST["emailContato"]);
    $telefoneContato = mysqli_real_escape_string($conexao, $_POST["telefoneContato"]);
    $enderecoContato = mysqli_real_escape_string($conexao, $_POST["enderecoContato"]);
    $sexoContato = mysqli_real_escape_string($conexao, $_POST["sexoContato"]);
    $dataNascContato = mysqli_real_escape_string($conexao, $_POST["dataNascContato"]);

    $sql = "INSERT INTO tbcontatos (
        nomeContato,
        emailContato,
        telefoneContato,
        enderecoContato,
        sexoContato,
        dataNascContato)
        VALUES(
            '{$nomeContato}',
            '{$emailContato}',
            '{$telefoneContato}',
            '{$enderecoContato}',
            '{$sexoContato}',
            '{$dataNascContato}'
        )
        ";
        mysqli_query($conexao,$sql) or die("Erro" . mysqli_error($conexao));
        echo "O Registro foi Inserido com Sucesso";

?>
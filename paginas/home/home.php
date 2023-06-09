<br><h3><i class="bi bi-clipboard-check-fill"></i>Pagina Principal</h3>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <script>
        function updateClock() {
            var now = new Date();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var seconds = now.getSeconds();
            var timeString = hours.toString().padStart(2, '0') + ':' + minutes.toString().padStart(2, '0') + ':' + seconds.toString().padStart(2, '0');
            document.getElementById('clock').textContent = timeString;
        }

        setInterval(updateClock, 1000);
    </script>
    <style>
    #container {
        display: flex;
        align-items: center;
    }

    #clock {
        padding: 10px;
        font-size: 24px;
        font-family: Arial, sans-serif;
    }

</style>
</head>
<body>
<main>
    <div id="container">
    <h2>Bem-vindo à sua Agenda Horario:</h2>
    <div id="clock"></div>
    </div>
    <p>Aqui você pode gerenciar suas tarefas, contatos e eventos. <i class="bi bi-emoji-laughing-fill"></i></p>
    <h4>Tarefas do dia</h4>
    <?php
        $txt_pesquisa = isset($_POST['txt_pesquisa']) ? $_POST['txt_pesquisa'] : "";

        $sql = "SELECT 
            idTarefa, 
            tituloTarefa,
            dataConclusaoTarefa,
            horaConclusaoTarefa
            FROM tbtarefas
            WHERE
            dataConclusaoTarefa = CURDATE()
            AND tituloTarefa LIKE '%{$txt_pesquisa}%'";

        $rs = mysqli_query($conexao, $sql) or die("Erro: " . mysqli_error($conexao));

        if (mysqli_num_rows($rs) > 0) {
            echo "<ul>";
            while ($dados = mysqli_fetch_assoc($rs)) {
                echo "<li><strong>{$dados['tituloTarefa']}</strong> - Data: {$dados['dataConclusaoTarefa']}, Hora: {$dados['horaConclusaoTarefa']}</li>";
            }
            echo "</ul>";
        } else {
            echo "<p>Nenhuma tarefa encontrada para o dia de hoje.</p>";
        }
    ?>

    <h4>Eventos próximos</h4>
    <?php
        $txt_pesquisa = isset($_POST['txt_pesquisa']) ? $_POST['txt_pesquisa'] : "";

        $sql = "SELECT 
            idEvento, 
            tituloEvento,
            dataInicioEvento,
            horaInicioEvento
            FROM tbeventos
            WHERE
            dataInicioEvento >= CURDATE()
            AND tituloEvento LIKE '%{$txt_pesquisa}%'";

        $rs = mysqli_query($conexao, $sql) or die("Erro" . mysqli_error($conexao));

        if (mysqli_num_rows($rs) > 0) {
            echo "<ul>";
            while ($dados = mysqli_fetch_assoc($rs)) {
                echo "<li><strong>{$dados['tituloEvento']}</strong> - Data: {$dados['dataInicioEvento']}, Horário: {$dados['horaInicioEvento']}</li>";
            }
            echo "</ul>";
        } else {
            echo "<p>Nenhum evento próximo encontrado.</p>";
        }
    ?>

<?php
$sqlFavoritos = "SELECT 
    idContato,
    upper(nomeContato) AS nomeContato,
    lower(emailContato) AS emailContato,
    telefoneContato,
    upper(enderecoContato) AS enderecoContato,
    CASE
        WHEN sexoContato='F' THEN 'FEMININO'
        WHEN sexoContato='M' THEN 'MASCULINO'
        WHEN sexoContato='f' THEN 'FEMININO'
        WHEN sexoContato='m' THEN 'MASCULINO'
    ELSE
        'NÃO ESPECIFICADO'
    END AS sexoContato,
    DATE_FORMAT(dataNascContato, '%d/%m/%Y') AS dataNascContato,
    flagFavoritoContato  
    FROM tbcontatos 
    WHERE flagFavoritoContato = 1
    ORDER BY nomeContato ASC";

$rsFavoritos = mysqli_query($conexao, $sqlFavoritos) or die("Erro: " . mysqli_error($conexao));
?>

<div>
    <h4>Contatos Favoritos</h4>
    <table class="table table-dark table-striped table-bordered table-sm">
        <thead>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Sexo</th>
                <th>Data Nasc.</th>
            </tr>
        </thead>
        <tbody>
            <?php
            while ($dadosFavoritos = mysqli_fetch_assoc($rsFavoritos)) {
                ?>
                <tr>
                    <td><?= $dadosFavoritos['idContato'] ?></td>
                    <td><?= $dadosFavoritos['nomeContato'] ?></td>
                    <td><?= $dadosFavoritos['emailContato'] ?></td>
                    <td><?= $dadosFavoritos['telefoneContato'] ?></td>
                    <td><?= $dadosFavoritos['enderecoContato'] ?></td>
                    <td><?= $dadosFavoritos['sexoContato'] ?></td>
                    <td><?= $dadosFavoritos['dataNascContato'] ?></td>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>
</main>
</body>
</html>
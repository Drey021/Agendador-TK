<?php
    include("./db/conexao.php");
    session_start();

    if(isset($_SESSION["loginUser"]) and isset($_SESSION["senhaUser"]) ){
        $loginUser = $_SESSION["loginUser"];
        $senhaUser = $_SESSION["senhaUser"];
        $nomeUser = $_SESSION["nomeUser"];

        $sql = "SELECT * FROM tbusuarios WHERE loginUser = '{$loginUser}' and senhaUser = '{$senhaUser}'";
        $rs = mysqli_query($conexao, $sql);
        $dados = mysqli_fetch_assoc($rs);
        $linha = mysqli_num_rows($rs);

        if( $linha == 0 ) {
            session_unset();
            session_destroy();
            header('Location: login.php');
            exit();
        }
    }else{
        header('Location: login.php');
        exit(); 
    }
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" sizes="16x16"  href="img/favicon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/estilo-padrao.css">

    <title>TeckLog Agendada </title>
    
</head>
<body>
    <header class="bg-dark">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a href="#" class="navbar-brand">
            <img src="img/teckLog.png" alt="Agendador" width="240">
        </a>

            <div class="collapse navbar-collapse" id="conteudoNavBarSuportado">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a href="index.php?menuop=home" class="nav-link active">Home</a></li>
                    <li class="nav-item"><a href="index.php?menuop=contatos" class="nav-link">Contato</a></li>
                    <li class="nav-item"><a href="index.php?menuop=tarefas" class="nav-link">Tarefas</a></li>
                    <li class="nav-item"><a href="index.php?menuop=eventos" class="nav-link">Eventos</a></li>
                </ul>
                <div class="navbar-nav w-100 justify-content-end">
                    <a href="logout.php" class="nav-link">
                        <i class="bi bi-person"></i>
                        <?=$nomeUser?> Sair <i class="bi bi-box-arrow-right"></i>
                    </a>
                </div>
            </div>
        </nav>
    </div>
    </header>

    <main>
    <div class="container">
    <?php
        $menuop = (isset($_GET["menuop"]))?$_GET["menuop"]:"home";
        switch ($menuop) {
            case 'home':
                include("paginas/home/home.php");
                break;
            case 'contatos':
                include("paginas/contatos/contatos.php");
                break;
            case 'cad-contato':
                include("paginas/contatos/cad-contato.php");
                break;
            case 'inserir-contato':
                include("paginas/contatos/inserir-contato.php");
                break;
            case 'editar-contato':
                include("paginas/contatos/editar-contato.php");
                break;
            case 'excluir-contato':
                include("paginas/contatos/excluir-contato.php");
                break;
            case 'atualizar-contato':
                include("paginas/contatos/atualizar-contato.php");
                break;
            case 'tarefas':
                include("paginas/tarefas/tarefas.php");
                break;
            case 'cad-tarefa':
                include("paginas/tarefas/cad-tarefa.php");
                break;
            case 'inserir-tarefa':
                include("paginas/tarefas/inserir-tarefa.php");
                break;
            case 'editar-tarefa':
                include("paginas/tarefas/editar-tarefa.php");
                break;
            case 'atualizar-tarefa':
                include("paginas/tarefas/atualizar-tarefa.php");
                break;
            case 'excluir-tarefa':
                include("paginas/tarefas/excluir-tarefa.php");
                break;
            case 'eventos':
                include("./paginas/eventos/eventos.php");
                break;
            case 'cad-evento':
                include("./paginas/eventos/cad-evento.php");
                break;
            case 'inserir-evento':
                include("./paginas/eventos/inserir-evento.php");
                break;
            case 'editar-evento':
                include("./paginas/eventos/editar-evento.php");
                break;
            case 'atualizar-evento':
                include("./paginas/eventos/atualizar-evento.php");
                break;
            case 'excluir-evento':
                include("./paginas/eventos/excluir-evento.php");
                break;
            default:
                include("paginas/home/home.php");
                break;
        }
    ?>
    </div>
    </main>
    <br>
    <footer class="container-fluid bg-dark text-light">
        <div class="text-center"> TeckLog Agenda</div>
    </footer>

    <script src="./js/jquery.js"></script>
    <script src="./js/jquery.form.js"></script>
    <script src="./js/upload.js"></script>
    <script src="./js/javascript-agendador.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
    <script src="./js/validation.js"></script>
</body>
</html>
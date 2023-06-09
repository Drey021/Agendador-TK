-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jun-2023 às 21:42
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agendador`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcontatos`
--

CREATE TABLE `tbcontatos` (
  `idContato` int(11) NOT NULL,
  `nomeContato` varchar(200) NOT NULL,
  `emailContato` varchar(100) NOT NULL,
  `telefoneContato` varchar(50) NOT NULL,
  `enderecoContato` varchar(200) NOT NULL,
  `sexoContato` char(1) NOT NULL,
  `dataNascContato` date NOT NULL,
  `flagFavoritoContato` tinyint(1) NOT NULL,
  `nomeFotoContato` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbcontatos`
--

INSERT INTO `tbcontatos` (`idContato`, `nomeContato`, `emailContato`, `telefoneContato`, `enderecoContato`, `sexoContato`, `dataNascContato`, `flagFavoritoContato`, `nomeFotoContato`) VALUES
(1, 'Andrey Santana Soares', 'andrey.soares@gmail.com', '(18)99626-0227', 'Jose Zamboni', 'M', '2003-02-21', 1, '1.png'),
(2, 'Eliane Santos Oliveira', 'eliane.santos@gmail.com', '(67)99256-1447', 'Rua Das Dores', 'F', '2000-01-31', 1, '2.png'),
(3, 'Iago Santana Soares', 'iago.soares@gmail.com', '(18)12345-6352', 'Rua Lele da cuca', 'M', '2023-05-03', 0, NULL),
(5, 'Breno Henrique', 'Breno.Henrique@gmail.com', '(14)14785-2336', 'Seila', 'M', '2023-05-31', 0, NULL),
(6, 'Iago Santana Soares', 'iago.soares@gmail.com', '(75)31924-8606', 'Seila', 'M', '2023-05-14', 0, NULL),
(7, 'Breno Henrique', 'Breno.Henrique@gmail.com', '(18)12345-6331', 'Seila', 'M', '2023-05-07', 0, NULL),
(8, 'Jonas Silva', 'Jonas.silva@gmail.com', '(75)31924-8606', 'Lailaaaaa', 'M', '2023-05-22', 0, NULL),
(9, 'Santana Soares Marcos', 'iago.soares@gmail.com', '(75)31924-8606', 'Seila', 'M', '2023-05-07', 0, NULL),
(10, 'Elisangela Soares', 'eli.soares@gmail.co', '(75)31924-8606', 'Lailaaaaa', 'F', '2023-05-28', 0, NULL),
(11, 'andrey soares santana', 'aandrey.soares@gmail.com', '(18)12345-6352', 'Seila', 'M', '2023-04-30', 0, NULL),
(12, 'Elisangela Soares', 'eli.soares@gmail.com', '(18)12345-6352', 'Lailaaaaa', 'F', '2023-05-21', 0, NULL),
(13, 'Elisangela Santana Soares', 'eli.soares@gmail.co', '(67)99256-1447', 'Lailaaaaa', 'F', '2023-04-30', 0, NULL),
(14, 'Elisangela Santana Soares', 'elisan.soares@gmail.co', '(67)99256-1447', 'Lailaaaaa', 'F', '2023-05-08', 0, NULL),
(15, 'andrey soares santana', 'iago.soares@gmail.com', '(18)12345-6331', 'Seila', 'M', '2023-05-20', 0, NULL),
(16, 'Elisangela Santana Soares', 'eli.soares.lala@gmail.com', '(67)99256-1447', 'Lailaaaaa', 'F', '2023-04-30', 0, NULL),
(17, 'Andrey Lucas', 'AndreyLouis@gmail.com', '(18)12345-6331', 'Seila', 'M', '2023-05-08', 0, NULL),
(18, 'zambi', 'eli.soares@gmail.co', '(18)12345-6352', 'Lailaaaaaaaaa', 'M', '2023-05-10', 0, NULL),
(19, 'zambola', 'zambola.soares@gmail.co', '(18)12345-6352', 'Lailaaaaa', 'F', '2023-05-14', 0, NULL),
(20, 'zambola', 'zambola.soares@gmail.co', '(18)12345-6352', 'Lailaaaaaaaaa', 'F', '2023-05-23', 0, NULL),
(21, 'elefante', 'elefante.soares@gmail.com', '(67)99256-1447', 'Seila', 'F', '2023-05-22', 0, NULL),
(22, 'macaco', 'caco@gmail.com', '(18)12345-6352', 'caco', 'M', '2023-05-08', 0, NULL),
(23, 'Elisangela Santana Soares', 'eli.soares@gmail.co', '(67)99256-1447', 'Lailaaaaa', 'F', '2023-05-01', 0, NULL),
(24, 'Iago Soares', 'iago@gmail.com', '(67)99256-1447', 'Seila', 'M', '2023-05-17', 0, NULL),
(25, 'Breno ', 'Breno.Henrique@gmail.com', '(18)12345-6331', 'Seila', 'M', '2023-05-29', 0, NULL),
(26, 'Breno ', 'Breno@gmail.com', '(18)12345-6331', 'Seila', 'M', '2023-05-14', 0, NULL),
(27, 'Elisangela Santana Soares', 'eli@gmail.co', '(75)31924-8606', 'Lailaaaaa', 'F', '2023-05-17', 0, NULL),
(28, 'Iago Santana ', 'iago@gmail.com', '(75)3192-4860', 'Seila', 'F', '2023-05-02', 0, NULL),
(29, 'Jonas ', 'Jonas.@gmail.com', '(75)3192-4860', 'Laila', 'M', '2023-05-31', 0, NULL),
(30, 'Santana Soares ', 'iago.soares@gmail.com', '(75)3192-4860', 'Seilak', 'F', '2023-05-07', 0, NULL),
(31, 'Elisangela Santana Luz', 'eli.soares@gmail.co', '(67)99256-1447', 'asaasasaas', 'F', '2023-05-14', 0, NULL),
(32, 'Soares', 'soares@gmail.com', '(75)3192-4860', 'Seila', 'M', '2023-05-14', 0, NULL),
(33, 'Elisangela Santana Soares', 'eli.soares@gmail.co', '(75)31924-8606', 'Lailaaaaa', 'F', '2023-05-29', 0, NULL),
(34, 'Elisangela Santana Soares', 'eli.soares@gmail.co', '(75)3192-4860', 'Lailaaaaa', 'F', '2023-05-25', 0, NULL),
(35, 'Elisangela Santana Soares', 'eli.soares@gmail.co', '(75)3192-4860', 'Lailaaaaa', 'F', '2023-05-29', 0, NULL),
(36, 'Breno Henrique', 'Breno.Henrique@gmail.com', '(18)12345-6331', 'Seila', 'F', '2023-05-01', 0, NULL),
(37, 'Iago Santana Soares', 'iago.soares@gmail.com', '(75)3192-4860', 'Seila', 'M', '2023-05-31', 0, NULL),
(38, 'Jonas Silva', 'Jonas.silva@gmail.com', '(75)3192-4860', 'Laila', 'F', '2023-05-23', 0, NULL),
(39, 'Santana Soares Marcos', 'iago.soares@gmail.com', '(75)3192-4860', 'Seila', 'M', '2023-05-15', 0, NULL),
(40, 'Soares', 'soares@gmail.com', '(75)3192-4860', 'Seila', 'M', '2023-05-24', 0, NULL),
(41, 'andrey soares santana', 'aandrey.soares@gmail.com', '(18)12345-6331', 'Seila', 'M', '2023-05-23', 0, NULL),
(42, 'Elisangela Soares', 'eli.soares@gmail.com', '(75)3192-4860', 'Lailaaaaa', 'F', '2023-05-24', 0, NULL),
(43, 'Elisangela Santana Soares', 'eli.soares@gmail.co', '(75)3192-4860', 'Lailaaaaa', 'F', '2023-05-23', 0, NULL),
(44, 'zambola', 'zambola.soares@gmail.co', '(75)3192-4860', 'Lailaaaaa', 'M', '2023-05-22', 0, NULL),
(45, 'andrey soares santana', 'aandrey.soares@gmail.com', '(18)12345-6331', 'Seila', 'M', '2023-05-09', 0, NULL),
(46, 'Soares', 'soares@gmail.com', '(75)3192-4860', 'Seila', 'M', '2023-05-18', 0, NULL),
(47, 'Santana Soares', 'iago.soares@gmail.com', '(75)3192-4860', 'Seilak', 'F', '2023-04-30', 0, NULL),
(48, 'Elisangela Soares', 'eli.soares@gmail.com', '(75)3192-4860', 'Lailaaaaa', 'M', '2023-05-23', 0, NULL),
(49, 'Santana Soares Marcos', 'iago.soares@gmail.com', '(75)3192-4860', 'Seila', 'M', '2023-05-30', 0, NULL),
(50, 'Elisangela Santana Soares', 'eli.soares@gmail.co', '(75)3192-4860', 'Lailaaaaa', '', '2023-05-30', 0, NULL),
(51, 'Iago Santana Soares', 'iago.soares@gmail.com', '(75)3192-4860', 'Seila', 'F', '2023-05-31', 0, NULL),
(52, 'zambola', 'zambola.soares@gmail.co', '(75)3192-4860', 'Lailaaaaa', 'F', '2023-05-24', 0, NULL),
(53, 'Soares', 'soares@gmail.com', '(18)12345-6352', 'Seila', 'M', '2023-05-03', 0, NULL),
(54, 'Santana Soares', 'iago.soares@gmail.com', '(18)12345-6352', 'Seilak', 'F', '2023-05-29', 0, NULL),
(55, 'Jonas Silva', 'Jonas.silva@gmail.com', '(18)12345-6352', 'Laila', 'F', '2023-05-23', 0, NULL),
(56, 'andrey soares santana', 'aandrey.soares@gmail.com', '(18)12345-6331', 'Seila', 'M', '2023-05-28', 0, NULL),
(57, 'Elisangela Soares', 'eli.soares@gmail.com', '(18)12345-6352', 'Lailaaaaa', 'F', '2023-05-24', 0, NULL),
(58, 'zambola', 'zambola.soares@gmail.co', '(18)12345-6352', 'Lailaaaaa', 'M', '2023-05-09', 0, NULL),
(59, 'Soares', 'soares@gmail.com', '(18)12345-6352', 'Seila', 'M', '2023-05-31', 0, NULL),
(60, 'Santana Soares', 'iago.soares@gmail.com', '(18)12345-6352', 'Seilak', 'M', '2023-05-31', 0, NULL),
(61, 'Santana Soares Marcos', 'iago.soares@gmail.com', '(18)12345-6352', 'Seila', 'M', '2023-06-01', 0, NULL),
(62, 'Jonas Silva', 'Jonas.silva@gmail.com', '(18)12345-6352', 'Laila', 'M', '2023-05-24', 0, NULL),
(67, 'andrey Marcos', 'andreyMarcos@gmail.com', '(18)12345-6331', 'Aladim', 'M', '2023-05-21', 0, '67.png'),
(68, 'Jonas Silva Lucas', 'iago.soares@gmail.com', '(18)12345-6352', 'Monjim Das Cluz', 'M', '2023-05-28', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbeventos`
--

CREATE TABLE `tbeventos` (
  `idEvento` int(11) NOT NULL,
  `tituloEvento` varchar(255) NOT NULL,
  `descricaoEvento` text NOT NULL,
  `dataInicioEvento` date NOT NULL,
  `horaInicioEvento` time NOT NULL,
  `dataFimEvento` date NOT NULL,
  `horaFimEvento` time NOT NULL,
  `statusEvento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbeventos`
--

INSERT INTO `tbeventos` (`idEvento`, `tituloEvento`, `descricaoEvento`, `dataInicioEvento`, `horaInicioEvento`, `dataFimEvento`, `horaFimEvento`, `statusEvento`) VALUES
(1, 'Palestra Fatec', 'Palestra Coordenador ', '2023-06-10', '20:00:00', '2023-06-10', '00:00:00', 0),
(4, 'Estudar para inglês ', 'Estudar para prova de inglês ', '2023-06-23', '15:30:00', '0000-00-00', '00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtarefas`
--

CREATE TABLE `tbtarefas` (
  `idTarefa` int(11) NOT NULL,
  `tituloTarefa` varchar(200) NOT NULL,
  `descricaoTarefa` text NOT NULL,
  `dataConclusaoTarefa` date NOT NULL,
  `horaConclusaoTarefa` time NOT NULL,
  `dataLembreteTarefa` date NOT NULL,
  `horaLembreteTarefa` time NOT NULL,
  `recorrenciaTarefa` int(11) NOT NULL,
  `statusTarefa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbtarefas`
--

INSERT INTO `tbtarefas` (`idTarefa`, `tituloTarefa`, `descricaoTarefa`, `dataConclusaoTarefa`, `horaConclusaoTarefa`, `dataLembreteTarefa`, `horaLembreteTarefa`, `recorrenciaTarefa`, `statusTarefa`) VALUES
(1, 'Fazer ERS do Álvaro ', 'Fazer a ERS do alvaro', '2023-06-14', '12:00:00', '2023-06-10', '00:00:00', 1, 0),
(2, 'Teste', 'Testando o home', '2023-06-09', '18:00:00', '0000-00-00', '00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `loginUser` varchar(45) NOT NULL,
  `senhaUser` varchar(64) NOT NULL,
  `nomeUser` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbusuarios`
--

INSERT INTO `tbusuarios` (`loginUser`, `senhaUser`, `nomeUser`) VALUES
('bruno', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'Bruno Santos');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbcontatos`
--
ALTER TABLE `tbcontatos`
  ADD PRIMARY KEY (`idContato`);

--
-- Índices para tabela `tbeventos`
--
ALTER TABLE `tbeventos`
  ADD PRIMARY KEY (`idEvento`);

--
-- Índices para tabela `tbtarefas`
--
ALTER TABLE `tbtarefas`
  ADD PRIMARY KEY (`idTarefa`);

--
-- Índices para tabela `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`loginUser`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbcontatos`
--
ALTER TABLE `tbcontatos`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `tbeventos`
--
ALTER TABLE `tbeventos`
  MODIFY `idEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbtarefas`
--
ALTER TABLE `tbtarefas`
  MODIFY `idTarefa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

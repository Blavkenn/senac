-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Nov-2022 às 22:02
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `condominio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `apartamento`
--

CREATE TABLE `apartamento` (
  `numero_apto` int(3) NOT NULL,
  `area_apto` int(3) NOT NULL,
  `codigo_edificio` int(3) NOT NULL,
  `codigo_morador` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `edificio`
--

CREATE TABLE `edificio` (
  `codigo_edificio` int(3) NOT NULL,
  `cep` int(8) NOT NULL,
  `numero` int(3) DEFAULT NULL,
  `data_construcao` date DEFAULT NULL,
  `data_vistoria` date DEFAULT NULL,
  `complemento` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `edificio`
--

INSERT INTO `edificio` (`codigo_edificio`, `cep`, `numero`, `data_construcao`, `data_vistoria`, `complemento`) VALUES
(1, 69000000, 13, '0000-00-00', NULL, 'teste de inclusao'),
(2, 69000001, 22, NULL, NULL, 'teste 2'),
(3, 69000002, 1322, NULL, NULL, 'teste 3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `morador`
--

CREATE TABLE `morador` (
  `codigo_morador` int(6) NOT NULL,
  `cpf` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `data_de_nascimento` date NOT NULL,
  `cep` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `apartamento`
--
ALTER TABLE `apartamento`
  ADD PRIMARY KEY (`numero_apto`,`area_apto`),
  ADD KEY `codigo_edificio` (`codigo_edificio`),
  ADD KEY `codigo_morador` (`codigo_morador`);

--
-- Índices para tabela `edificio`
--
ALTER TABLE `edificio`
  ADD PRIMARY KEY (`codigo_edificio`);

--
-- Índices para tabela `morador`
--
ALTER TABLE `morador`
  ADD PRIMARY KEY (`codigo_morador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `edificio`
--
ALTER TABLE `edificio`
  MODIFY `codigo_edificio` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `morador`
--
ALTER TABLE `morador`
  MODIFY `codigo_morador` int(6) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `apartamento`
--
ALTER TABLE `apartamento`
  ADD CONSTRAINT `apartamento_ibfk_1` FOREIGN KEY (`codigo_edificio`) REFERENCES `edificio` (`codigo_edificio`),
  ADD CONSTRAINT `apartamento_ibfk_2` FOREIGN KEY (`codigo_morador`) REFERENCES `morador` (`codigo_morador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

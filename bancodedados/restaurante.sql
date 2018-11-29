-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Nov-2018 às 20:40
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurante`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aux`
--

CREATE TABLE `aux` (
  `cod` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aux`
--

INSERT INTO `aux` (`cod`, `tipo`, `iduser`) VALUES
(1, 'Administrador', 1),
(2, 'Caixa', 3),
(3, 'Caixa', 3),
(4, 'Administrador', 1),
(5, 'Administrador', 1),
(6, 'Caixa', 3),
(7, 'Administrador', 1),
(8, 'Usuario Comum', 4),
(9, 'Administrador', 1),
(10, 'Usuario Comum', 4),
(11, 'Usuario Comum', 4),
(12, 'Administrador', 1),
(13, 'Administrador', 1),
(14, 'Administrador', 1),
(15, 'Administrador', 1),
(16, 'Administrador', 1),
(17, 'Administrador', 1),
(18, 'Administrador', 1),
(19, 'Administrador', 1),
(20, 'Administrador', 1),
(21, 'Administrador', 1),
(22, 'Usuario Comum', 4),
(23, 'Administrador', 1),
(24, 'Usuario Comum', 4),
(25, 'Administrador', 1),
(26, 'Administrador', 1),
(27, 'Administrador', 1),
(28, 'Administrador', 1),
(29, 'Administrador', 1),
(30, 'Administrador', 1),
(31, 'Administrador', 1),
(32, 'Administrador', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cardapio`
--

CREATE TABLE `cardapio` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` varchar(50) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cardapio`
--

INSERT INTO `cardapio` (`id`, `nome`, `preco`, `categoria`) VALUES
(2, 'Pizza G', 'R$200', 'Prato');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id`, `nome`, `quantidade`, `valor`) VALUES
(2, 'calabresa', 12, 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `nentrega` int(255) NOT NULL,
  `produto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `login` varchar(225) NOT NULL,
  `senha` varchar(225) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `nomeu` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `senha`, `tipo`, `nomeu`, `cpf`, `telefone`, `endereco`) VALUES
(1, 'admin', 'admin', 'Administrador', 'Wandson Batista Aguiar', '617.383.753-66', '+5599991874752', 'Avenida Imperatriz, Planalto'),
(4, 'user', 'user', 'Usuario Comum', 'Usuario Padrão 01 / Teste', '000.000.000-00', '0000000000', 'Endereço Padrão 01 / Teste'),
(5, 'caixa', 'caixa', 'Caixa', 'Caixa Padrão 01 / Teste', '111.111.111-11', '1111111111', 'Endereço Padrão 02 / Teste'),
(6, 'entregador', 'entregador', 'Entregador', 'Entregador Padrão 01 / Teste', '222.222.222-22', '2222222222', 'Endereço Padrão 03 / Teste');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aux`
--
ALTER TABLE `aux`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `cardapio`
--
ALTER TABLE `cardapio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aux`
--
ALTER TABLE `aux`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cardapio`
--
ALTER TABLE `cardapio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

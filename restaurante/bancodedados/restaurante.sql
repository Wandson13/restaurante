-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Dez-2018 às 00:01
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.10

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
(32, 'Administrador', 1),
(33, 'Administrador', 1),
(34, 'Administrador', 1),
(35, 'Administrador', 1),
(36, 'Administrador', 1),
(37, 'Administrador', 1),
(38, 'Administrador', 1),
(39, 'Administrador', 1),
(40, 'Administrador', 1),
(41, 'Administrador', 1),
(42, 'Usuario Comum', 4),
(43, 'Administrador', 1),
(44, 'Usuario Comum', 4),
(45, 'Usuario Comum', 4),
(46, 'Usuario Comum', 4),
(47, 'Usuario Comum', 4),
(48, 'Usuario Comum', 4),
(49, 'Usuario Comum', 4),
(50, 'Usuario Comum', 4),
(51, 'Administrador', 1),
(52, 'Administrador', 1),
(53, 'Entregador', 7),
(54, 'Administrador', 1),
(55, 'Administrador', 1),
(56, 'Caixa', 5),
(57, 'Usuario Comum', 4),
(58, 'Usuario Comum', 4),
(59, 'Usuario Comum', 4),
(60, 'Administrador', 1),
(61, 'Usuario Comum', 4),
(62, 'Usuario Comum', 4),
(63, 'Usuario Comum', 4),
(64, 'Usuario Comum', 4),
(65, 'Usuario Comum', 4),
(66, 'Usuario Comum', 4),
(67, 'Usuario Comum', 4),
(68, 'Usuario Comum', 4),
(69, 'Usuario Comum', 4),
(70, 'Usuario Comum', 4),
(71, 'Usuario Comum', 4),
(72, 'Usuario Comum', 4),
(73, 'Usuario Comum', 4),
(74, 'Usuario Comum', 4),
(75, 'Administrador', 1),
(76, 'Usuario Comum', 4),
(77, 'Usuario Comum', 4),
(78, 'Usuario Comum', 4),
(79, 'Usuario Comum', 4),
(80, 'Usuario Comum', 4),
(81, 'Usuario Comum', 4),
(82, 'Usuario Comum', 4),
(83, 'Usuario Comum', 4),
(84, 'Usuario Comum', 4),
(85, 'Usuario Comum', 4),
(86, 'Usuario Comum', 4),
(87, 'Usuario Comum', 4),
(88, 'Usuario Comum', 4),
(89, 'Administrador', 1),
(90, 'Administrador', 1),
(91, 'Administrador', 1),
(92, 'Administrador', 1),
(93, 'Administrador', 1),
(94, 'Caixa', 5),
(95, 'Usuario Comum', 4),
(96, 'Usuario Comum', 4),
(97, 'Usuario Comum', 4),
(98, 'Entregador', 6),
(99, 'Administrador', 1),
(100, 'Usuario Comum', 4),
(101, 'Entregador', 6),
(102, 'Caixa', 5),
(103, 'Caixa', 5),
(104, 'Administrador', 1),
(105, 'Usuario Comum', 4),
(106, 'Administrador', 1),
(107, 'Usuario Comum', 4),
(108, 'Usuario Comum', 4),
(109, 'Usuario Comum', 4),
(110, 'Usuario Comum', 4),
(111, 'Usuario Comum', 4),
(112, 'Usuario Comum', 4),
(113, 'Usuario Comum', 4),
(114, 'Usuario Comum', 4),
(115, 'Administrador', 1),
(116, 'Administrador', 1),
(117, 'Administrador', 1),
(118, 'Usuario Comum', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bebida`
--

CREATE TABLE `bebida` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bebida`
--

INSERT INTO `bebida` (`id`, `nome`, `preco`, `categoria`) VALUES
(1, 'coca-cola', 8, 'Bebida');

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
  `prato` varchar(255) NOT NULL,
  `bebida` varchar(255) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `prato`
--

CREATE TABLE `prato` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` double NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `prato`
--

INSERT INTO `prato` (`id`, `nome`, `preco`, `categoria`) VALUES
(1, 'Pizza GG', 39, 'Prato'),
(2, 'Pizza G', 20, 'Prato');

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
(6, 'entregador', 'entregador', 'Entregador', 'Entregador Padrão 01 / Teste', '222.222.222-22', '2222222222', 'Endereço Padrão 03 / Teste'),
(7, 'larissa', 'princesa', 'Entregador', 'Larrisa', '000.001.258-44', '99981475239', 'Rua de Deus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aux`
--
ALTER TABLE `aux`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `bebida`
--
ALTER TABLE `bebida`
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
-- Indexes for table `prato`
--
ALTER TABLE `prato`
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
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `bebida`
--
ALTER TABLE `bebida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `prato`
--
ALTER TABLE `prato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30-Nov-2018 às 12:50
-- Versão do servidor: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restaurante`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aux`
--

CREATE TABLE IF NOT EXISTS `aux` (
`cod` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

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
(56, 'Caixa', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bebida`
--

CREATE TABLE IF NOT EXISTS `bebida` (
`id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `bebida`
--

INSERT INTO `bebida` (`id`, `nome`, `preco`, `categoria`) VALUES
(1, 'coca-cola', 8, 'Bebida');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE IF NOT EXISTS `estoque` (
`id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id`, `nome`, `quantidade`, `valor`) VALUES
(2, 'calabresa', 12, 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
`id` int(11) NOT NULL,
  `nentrega` int(255) NOT NULL,
  `produto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `prato`
--

CREATE TABLE IF NOT EXISTS `prato` (
`id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` double NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `prato`
--

INSERT INTO `prato` (`id`, `nome`, `preco`, `categoria`) VALUES
(1, 'Pizza GG', 39, 'Prato');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `login` varchar(225) NOT NULL,
  `senha` varchar(225) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `nomeu` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `senha`, `tipo`, `nomeu`, `cpf`, `telefone`, `endereco`) VALUES
(1, 'admin', 'admin', 'Administrador', 'Wandson Batista Aguiar', '617.383.753-66', '+5599991874752', 'Avenida Imperatriz, Planalto'),
(4, 'user', 'user', 'Usuario Comum', 'Usuario Padrão 01 / Teste', '000.000.000-00', '0000000000', 'Endereço Padrão 01 / Teste'),
(5, 'caixa', 'caixa', 'Caixa', 'Caixa Padrão 01 / Teste', '111.111.111-11', '1111111111', 'Endereço Padrão 02 / Teste'),
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
MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `bebida`
--
ALTER TABLE `bebida`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `estoque`
--
ALTER TABLE `estoque`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prato`
--
ALTER TABLE `prato`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

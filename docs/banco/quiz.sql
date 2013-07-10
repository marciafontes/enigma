-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 10/07/2013 às 22h37min
-- Versão do Servidor: 5.5.16
-- Versão do PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `quiz`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `assunto`
--

CREATE TABLE IF NOT EXISTS `assunto` (
  `idassunto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text CHARACTER SET utf8 NOT NULL,
  `conteudo` longtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idassunto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `assunto`
--

INSERT INTO `assunto` (`idassunto`, `nome`, `conteudo`) VALUES
(1, 'Palíndromes', 'Uma cadeia de caracteres é chamada de palíndrome pura se a seqüência de caracteres da esquerda\r\npara a direita é igual à seqüência de caracteres da direita para a esquerda (uma outra definição é\r\nque o primeiro caractere da cadeia deve ser igual ao último caractere, o segundo caractere seja\r\nigual ao penúltimo caractere, o terceiro caractere seja igual ao antepenúltimo caractere, e assim\r\npor diante). Por exemplo, as cadeias de caracteres ‘MIM’ , ‘AXXA’ e ‘ANANAGANANA’ são\r\npalíndromes puras.\r\nUma outra definição de palíndrome utiliza comparações entre caracteres, considerando que os\r\ncaracteres são ordenados crescentemente de A até Z, ou seja, A < B < C < ... < Z. Uma cadeia de\r\ncaracteres é chamada de palíndrome quebrada se a seqüência de resultados da comparação entre o\r\nprimeiro e o segundo caracteres é igual ao resultado da comparação entre o último e o penúltimo\r\ncaractere, e o resultado da comparação entre o segundo e o terceiro caracteres é igual ao resultado\r\nda comparação entre o penúltimo e o antepenúltimo caracteres, e assim por diante. Por exemplo,\r\nas cadeias ‘MIN’ e ‘ASSOCFUUS’ são palíndromes quebradas. Obviamente, toda cadeia que é\r\npalíndrome pura é também palíndrome quebrada.'),
(2, 'Roland Garros', 'No torneio de Roland Garros, um dos mais tradicionais torneios de tênis do mundo, realizado em\nParis, participam 128 tenistas. Em cada partida, participam dois jogadores, sendo que o vencedor\npassa para a próxima fase, e o perdedor é eliminado do torneio. A cada rodada, os tenistas que\nainda continuam no torneio participam de exatamente uma partida.'),
(3, 'Cavalo', 'O jogo de xadrez, além de ser um jogo que exige bastante raciocínio, é uma ótima fonte de quebra-\r\ncabeças. Esta tarefa trata de um destes quebra-cabeças, envolvendo os movimentos de uma de\r\nsuas peças, o cavalo. Os movimentos do cavalo são ditos em ‘L’, pois ele sempre deve andar duas casas em uma direção e uma casa na direção perpendicular. A figura acima ilustra os possíveis\r\nmovimentos do cavalo, onde o caractere ‘C’ indica a posição inicial e o caractere ‘•’ representa as\r\npossíveis posições finais. É importante notar que o cavalo é a única peça que pode saltar sobre\r\noutras peças do xadrez. Note ainda que na representação que usamos não distinguimos casas brancas\r\nde casas pretas no tabuleiro.\r\nUsando os movimentos do cavalo, você deve determinar qual o número mínimo de movimentos\r\ndo cavalo para ir de uma casa Início até uma casa Final, sendo proibido que o cavalo ‘pare’ sobre\r\nalgumas casas especificadas durante a sequência de movimentos.\r\nSão fornecidas várias configurações do tabuleiro (8 por 8 casas), com as casas marcadas com os\r\nseguintes valores: - I: início - F: Final - X: proibido.'),
(4, 'Biblioteca', 'Exatamente nove revistas devem ser expostas em uma das prateleiras da biblioteca da escola.\r\nVamos chamar a posição mais à esquerda de primeira, e a mais à direita de nona posição. Das\r\nnove revistas, quatro são sobre ciência, três são sobre esportes, e duas são sobre culinária. As quatro\r\nrevistas sobre ciência devem ser colocados uma vizinha à outra, e as duas revistas sobre culinária\r\ntambém devem ser dispostas uma vizinha à outra (ou seja, uma ao lado da outra). As três\r\nrevistas sobre esportes não precisam estar colocadas uma vizinha à outra.'),
(5, 'Salas de Aulas', 'Uma escola conta com sete salas de aula que devem ser pintadas. As salas estão localizadas em\r\num único lado do corredor, sendo numeradas sequencialmente, de um a sete, da frente para os\r\nfundos do prédio.\r\nCada sala de aula deve ser pintada utilizando uma única cor, de acordo com as seguintes restrições:\r\n• Duas salas devem ser pintadas de branco; duas salas devem ser pintadas de azul; duas salas\r\ndevem ser pintadas de verde; e uma sala deve ser pintada de amarelo.\r\n• As duas salas pintadas de verde devem ser vizinhas (contíguas).\r\n• As duas salas pintadas de azul não podem ser vizinhas (contíguas).\r\n• A sala pintada de amarelo não pode ser vizinha de uma sala pintada de branco.\r\n• A sala número 3 deve ser pintada de branco.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_assunto`
--

CREATE TABLE IF NOT EXISTS `ngm_assunto` (
  `id_assunto` bigint(20) NOT NULL AUTO_INCREMENT,
  `ngm_rodada_ngm_jogo_id_jogo` bigint(20) NOT NULL,
  `ngm_rodada_id_rodada` bigint(20) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id_assunto`),
  KEY `ngm_rodada_ngm_jogo_id_jogo` (`ngm_rodada_ngm_jogo_id_jogo`),
  KEY `ngm_rodada_id_rodada` (`ngm_rodada_id_rodada`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `ngm_assunto`
--

INSERT INTO `ngm_assunto` (`id_assunto`, `ngm_rodada_ngm_jogo_id_jogo`, `ngm_rodada_id_rodada`, `nome`, `descricao`) VALUES
(1, 1, 1, 'Assunto 1', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(2, 1, 1, 'Assunto 2', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(3, 1, 1, 'Assunto 3', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(4, 1, 2, 'Assunto 4', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(5, 1, 2, 'Assunto 5', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(6, 1, 3, 'Assunto 6', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(7, 1, 3, 'Assunto 7', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(8, 1, 4, 'Assunto 8', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(9, 1, 4, 'Assunto 9', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(10, 1, 5, 'Assunto 10', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(11, 1, 5, 'Assunto 11', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
(12, 1, 6, 'Assunto 12', 'Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_jogo`
--

CREATE TABLE IF NOT EXISTS `ngm_jogo` (
  `id_jogo` bigint(20) NOT NULL AUTO_INCREMENT,
  `jogo` varchar(45) NOT NULL,
  `descricao` text NOT NULL,
  `nrodada` int(11) NOT NULL,
  `metajogo` int(11) NOT NULL,
  `premiofinal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_jogo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `ngm_jogo`
--

INSERT INTO `ngm_jogo` (`id_jogo`, `jogo`, `descricao`, `nrodada`, `metajogo`, `premiofinal`) VALUES
(1, 'Jogo para o NPI', 'Este jogo foi feito para todos os alunos do NPI e afins', 10, 100, 'codigo fonte de um programa ou informações sovre tal coisa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_pergunta`
--

CREATE TABLE IF NOT EXISTS `ngm_pergunta` (
  `id_pergunta` bigint(20) NOT NULL AUTO_INCREMENT,
  `ngm_assunto_id_assunto` bigint(20) NOT NULL,
  `comandoPergunta` text NOT NULL,
  PRIMARY KEY (`id_pergunta`),
  KEY `ngm_assunto_id_assunto` (`ngm_assunto_id_assunto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Extraindo dados da tabela `ngm_pergunta`
--

INSERT INTO `ngm_pergunta` (`id_pergunta`, `ngm_assunto_id_assunto`, `comandoPergunta`) VALUES
(1, 1, 'pergunta 1?'),
(2, 1, 'pergunta 2?'),
(3, 1, 'pergunta 3?'),
(4, 1, 'pergunta 4?'),
(5, 1, 'pergunta 5?'),
(6, 1, 'pergunta 6?'),
(7, 2, 'pergunta 7?'),
(8, 2, 'pergunta 8?'),
(9, 2, 'pergunta 9?'),
(10, 2, 'pergunta 10?'),
(11, 2, 'pergunta 11?'),
(12, 3, 'pergunta 12?'),
(13, 3, 'pergunta 13?'),
(14, 3, 'pergunta 14?'),
(15, 3, 'pergunta 15?'),
(16, 3, 'pergunta 16?'),
(17, 4, 'pergunta 17?'),
(18, 4, 'pergunta 18?'),
(19, 4, 'pergunta 19?'),
(20, 4, 'pergunta 20?'),
(21, 4, 'pergunta 21?'),
(22, 5, 'pergunta 22?'),
(23, 5, 'pergunta 23?'),
(24, 5, 'pergunta 24?'),
(25, 5, 'pergunta 25?'),
(26, 5, 'pergunta 26?'),
(27, 6, 'pergunta 27?'),
(28, 6, 'pergunta 28?'),
(29, 6, 'pergunta 29?'),
(30, 6, 'pergunta 30?'),
(31, 6, 'pergunta 31?'),
(32, 7, 'pergunta 32?'),
(33, 7, 'pergunta 33?'),
(34, 7, 'pergunta 34?'),
(35, 7, 'pergunta 35?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_resposta`
--

CREATE TABLE IF NOT EXISTS `ngm_resposta` (
  `id_resposta` bigint(20) NOT NULL AUTO_INCREMENT,
  `ngm_pergunta_ngm_assunto_id_assunto` bigint(20) NOT NULL,
  `ngm_pergunta_id_pergunta` bigint(20) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `correta` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_resposta`),
  KEY `ngm_pergunta_ngm_assunto_id_assunto` (`ngm_pergunta_ngm_assunto_id_assunto`,`ngm_pergunta_id_pergunta`),
  KEY `ngm_pergunta_id_pergunta` (`ngm_pergunta_id_pergunta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=176 ;

--
-- Extraindo dados da tabela `ngm_resposta`
--

INSERT INTO `ngm_resposta` (`id_resposta`, `ngm_pergunta_ngm_assunto_id_assunto`, `ngm_pergunta_id_pergunta`, `descricao`, `correta`) VALUES
(1, 1, 1, 'resposta 1', 1),
(2, 1, 1, 'resposta 2', 0),
(3, 1, 1, 'resposta 3', 0),
(4, 1, 1, 'resposta 4', 0),
(5, 1, 1, 'resposta 5', 0),
(6, 1, 2, 'resposta 1', 0),
(7, 1, 2, 'resposta 2', 1),
(8, 1, 2, 'resposta 3', 0),
(9, 1, 2, 'resposta 4', 0),
(10, 1, 2, 'resposta 5', 0),
(11, 1, 3, 'resposta 1', 0),
(12, 1, 3, 'resposta 2', 1),
(13, 1, 3, 'resposta 3', 0),
(14, 1, 3, 'resposta 4', 0),
(15, 1, 3, 'resposta 5', 0),
(16, 1, 4, 'resposta 1', 0),
(17, 1, 4, 'resposta 2', 1),
(18, 1, 4, 'resposta 3', 0),
(19, 1, 4, 'resposta 4', 0),
(20, 1, 4, 'resposta 5', 0),
(21, 1, 5, 'resposta 1', 0),
(22, 1, 5, 'resposta 2', 0),
(23, 1, 5, 'resposta 3', 1),
(24, 1, 5, 'resposta 4', 0),
(25, 1, 5, 'resposta 5', 0),
(26, 1, 6, 'resposta 1', 0),
(27, 1, 6, 'resposta 2', 0),
(28, 1, 6, 'resposta 3', 1),
(29, 1, 6, 'resposta 4', 0),
(30, 1, 6, 'resposta 5', 0),
(31, 2, 7, 'resposta 1', 0),
(32, 2, 7, 'resposta 2', 0),
(33, 2, 7, 'resposta 3', 1),
(34, 2, 7, 'resposta 4', 0),
(35, 2, 7, 'resposta 5', 0),
(36, 2, 8, 'resposta 1', 0),
(37, 2, 8, 'resposta 2', 0),
(38, 2, 8, 'resposta 3', 0),
(39, 2, 8, 'resposta 4', 0),
(40, 2, 8, 'resposta 5', 1),
(41, 2, 9, 'resposta 1', 1),
(42, 2, 9, 'resposta 2', 0),
(43, 2, 9, 'resposta 3', 0),
(44, 2, 9, 'resposta 4', 0),
(45, 2, 9, 'resposta 5', 0),
(46, 2, 10, 'resposta 1', 0),
(47, 2, 10, 'resposta 2', 0),
(48, 2, 10, 'resposta 3', 0),
(49, 2, 10, 'resposta 4', 0),
(50, 2, 10, 'resposta 5', 1),
(51, 2, 11, 'resposta 1', 0),
(52, 2, 11, 'resposta 2', 0),
(53, 2, 11, 'resposta 3', 1),
(54, 2, 11, 'resposta 4', 0),
(55, 2, 11, 'resposta 5', 0),
(56, 3, 12, 'resposta 1', 0),
(57, 3, 12, 'resposta 2', 1),
(58, 3, 12, 'resposta 3', 0),
(59, 3, 12, 'resposta 4', 0),
(60, 3, 12, 'resposta 5', 0),
(61, 3, 13, 'resposta 1', 0),
(62, 3, 13, 'resposta 2', 1),
(63, 3, 13, 'resposta 3', 0),
(64, 3, 13, 'resposta 4', 0),
(65, 3, 13, 'resposta 5', 0),
(66, 3, 14, 'resposta 1', 0),
(67, 3, 14, 'resposta 2', 1),
(68, 3, 14, 'resposta 3', 0),
(69, 3, 14, 'resposta 4', 0),
(70, 3, 14, 'resposta 5', 0),
(71, 3, 15, 'resposta 1', 0),
(72, 3, 15, 'resposta 2', 1),
(73, 3, 15, 'resposta 3', 0),
(74, 3, 15, 'resposta 4', 0),
(75, 3, 15, 'resposta 5', 0),
(76, 3, 16, 'resposta 1', 0),
(77, 3, 16, 'resposta 2', 1),
(78, 3, 16, 'resposta 3', 0),
(79, 3, 16, 'resposta 4', 0),
(80, 3, 16, 'resposta 5', 0),
(81, 4, 17, 'resposta 1', 0),
(82, 4, 17, 'resposta 2', 1),
(83, 4, 17, 'resposta 3', 0),
(84, 4, 17, 'resposta 4', 0),
(85, 4, 17, 'resposta 5', 0),
(86, 4, 18, 'resposta 1', 0),
(87, 4, 18, 'resposta 2', 1),
(88, 4, 18, 'resposta 3', 0),
(89, 4, 18, 'resposta 4', 0),
(90, 4, 18, 'resposta 5', 0),
(91, 4, 19, 'resposta 1', 0),
(92, 4, 19, 'resposta 2', 1),
(93, 4, 19, 'resposta 3', 0),
(94, 4, 19, 'resposta 4', 0),
(95, 4, 19, 'resposta 5', 0),
(96, 4, 20, 'resposta 1', 0),
(97, 4, 20, 'resposta 2', 1),
(98, 4, 20, 'resposta 3', 0),
(99, 4, 20, 'resposta 4', 0),
(100, 4, 20, 'resposta 5', 0),
(101, 4, 21, 'resposta 1', 0),
(102, 4, 21, 'resposta 2', 1),
(103, 4, 21, 'resposta 3', 0),
(104, 4, 21, 'resposta 4', 0),
(105, 4, 21, 'resposta 5', 0),
(106, 5, 22, 'resposta 1', 0),
(107, 5, 22, 'resposta 2', 1),
(108, 5, 22, 'resposta 3', 0),
(109, 5, 22, 'resposta 4', 0),
(110, 5, 22, 'resposta 5', 0),
(111, 5, 23, 'resposta 1', 0),
(112, 5, 23, 'resposta 2', 1),
(113, 5, 23, 'resposta 3', 0),
(114, 5, 23, 'resposta 4', 0),
(115, 5, 23, 'resposta 5', 0),
(116, 5, 24, 'resposta 1', 0),
(117, 5, 24, 'resposta 2', 1),
(118, 5, 24, 'resposta 3', 0),
(119, 5, 24, 'resposta 4', 0),
(120, 5, 24, 'resposta 5', 0),
(121, 5, 25, 'resposta 1', 0),
(122, 5, 25, 'resposta 2', 1),
(123, 5, 25, 'resposta 3', 0),
(124, 5, 25, 'resposta 4', 0),
(125, 5, 25, 'resposta 5', 0),
(126, 5, 26, 'resposta 1', 0),
(127, 5, 26, 'resposta 2', 1),
(128, 5, 26, 'resposta 3', 0),
(129, 5, 26, 'resposta 4', 0),
(130, 5, 26, 'resposta 5', 0),
(131, 6, 27, 'resposta 1', 0),
(132, 6, 27, 'resposta 2', 1),
(133, 6, 27, 'resposta 3', 0),
(134, 6, 27, 'resposta 4', 0),
(135, 6, 27, 'resposta 5', 0),
(136, 6, 28, 'resposta 1', 0),
(137, 6, 28, 'resposta 2', 1),
(138, 6, 28, 'resposta 3', 0),
(139, 6, 28, 'resposta 4', 0),
(140, 6, 28, 'resposta 5', 0),
(141, 6, 29, 'resposta 1', 0),
(142, 6, 29, 'resposta 2', 1),
(143, 6, 29, 'resposta 3', 0),
(144, 6, 29, 'resposta 4', 0),
(145, 6, 29, 'resposta 5', 0),
(146, 6, 30, 'resposta 1', 0),
(147, 6, 30, 'resposta 2', 1),
(148, 6, 30, 'resposta 3', 0),
(149, 6, 30, 'resposta 4', 0),
(150, 6, 30, 'resposta 5', 0),
(151, 6, 31, 'resposta 1', 0),
(152, 6, 31, 'resposta 2', 1),
(153, 6, 31, 'resposta 3', 0),
(154, 6, 31, 'resposta 4', 0),
(155, 6, 31, 'resposta 5', 0),
(156, 7, 32, 'resposta 1', 0),
(157, 7, 32, 'resposta 2', 1),
(158, 7, 32, 'resposta 3', 0),
(159, 7, 32, 'resposta 4', 0),
(160, 7, 32, 'resposta 5', 0),
(161, 7, 33, 'resposta 1', 0),
(162, 7, 33, 'resposta 2', 1),
(163, 7, 33, 'resposta 3', 0),
(164, 7, 33, 'resposta 4', 0),
(165, 7, 33, 'resposta 5', 0),
(166, 7, 34, 'resposta 1', 0),
(167, 7, 34, 'resposta 2', 1),
(168, 7, 34, 'resposta 3', 0),
(169, 7, 34, 'resposta 4', 0),
(170, 7, 34, 'resposta 5', 0),
(171, 7, 35, 'resposta 1', 0),
(172, 7, 35, 'resposta 2', 1),
(173, 7, 35, 'resposta 3', 0),
(174, 7, 35, 'resposta 4', 0),
(175, 7, 35, 'resposta 5', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_rodada`
--

CREATE TABLE IF NOT EXISTS `ngm_rodada` (
  `id_rodada` bigint(20) NOT NULL AUTO_INCREMENT,
  `ngm_jogo_id_jogo` bigint(20) NOT NULL,
  `nomerodada` varchar(20) NOT NULL,
  `nperguntas` int(11) NOT NULL,
  `metadarodada` int(11) NOT NULL,
  `jogoid` bigint(20) NOT NULL,
  `introducao` varchar(45) NOT NULL,
  `premiorodada` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rodada`),
  KEY `ngm_jogo_id_jogo` (`ngm_jogo_id_jogo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `ngm_rodada`
--

INSERT INTO `ngm_rodada` (`id_rodada`, `ngm_jogo_id_jogo`, `nomerodada`, `nperguntas`, `metadarodada`, `jogoid`, `introducao`, `premiorodada`) VALUES
(1, 1, 'rodada matemática', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(2, 1, 'rodada português', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(3, 1, 'rodada história', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(4, 1, 'rodada fisica', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(5, 1, 'rodada química', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(6, 1, 'rodada biologia', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE IF NOT EXISTS `pergunta` (
  `id_pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `idassunto` int(11) NOT NULL,
  `pergunta` varchar(2000) NOT NULL,
  `op1` varchar(2000) NOT NULL,
  `op2` varchar(2000) NOT NULL,
  `op3` varchar(2000) NOT NULL,
  `op4` varchar(2000) NOT NULL,
  `op5` varchar(2000) NOT NULL,
  `cop` varchar(1) NOT NULL,
  PRIMARY KEY (`id_pergunta`),
  KEY `idassunto` (`idassunto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `pergunta`
--

INSERT INTO `pergunta` (`id_pergunta`, `idassunto`, `pergunta`, `op1`, `op2`, `op3`, `op4`, `op5`, `cop`) VALUES
(1, 1, 'Qual das seguintes cadeias é palíndrome quebrada:', 'TODOS', 'AZULMARINHO', 'NAOMARQUEAQUI', 'PROGRAMAR', 'FIM', '1'),
(2, 1, 'Considere as seguintes cadeias: (i) BIT (ii) AAAEAEAEAAA (iii) SUBINOONIBUS (iv) TIPOERROTUDO (v) ERAREHUMANO Qual das seguintes afirmações é correta?', '(i) e (ii) são palíndromes puras.', '(iv) e (v) são palíndromes quebradas', '(ii) não é palíndrome pura.', '(iii) é palíndrome pura e (iv) é palíndrome quebrada.', '(v) é palíndrome quebrada.', '4'),
(3, 2, 'Qual o número total de partidas deste torneio?', '64', '65', '127', '128', 'nenhuma das acima', '3'),
(4, 2, 'Quantas rodadas existem, no total, durante o torneio?', '8', '9', '10', '16', 'nenhuma das acima', '5'),
(5, 3, 'Número mínimo de movimentos:', '3', '4', '5', '6', 'Impossivel', '1'),
(6, 4, 'Se a sexta posição é ocupada por uma revista de ciência, e a oitava posição é ocupada por uma revista de esportes, qual das seguintes posições deve ser ocupada por uma revista de culinária?', 'A primeira', 'A segunda', 'A terceira', 'A quarta', 'A nona', '2'),
(7, 4, 'As revistas de esportes devem ser colocadas uma vizinha à outra se uma revista de culinária está em qual das seguintes posições?', 'Na primeira', 'Na terceira', 'Na quinta', 'Na sétima', 'Na nona', '3'),
(8, 4, 'Se a primeira e a sétima posições têm revistas do mesmo tipo, qual das seguintes posições deve ter uma revista de ciência?', 'A primeira', 'A segunda', 'A quarta', 'A sexta', 'A oitava', '3'),
(9, 4, 'Se uma revista de esportes ocupa a quinta posição na prateleira, e uma revista de ciência ocupa a nona posição, qual dos seguintes pares de posições devem ter revistas de tipos diferentes?', 'A primeira e a segunda', 'A segunda e a terceira', 'A segunda e a quarta', 'A terceira e a quarta', 'A terceira e a quinta', '3'),
(10, 5, 'Se a sala 2 for pintada de verde, qual das seguintes salas deve também ser pintada de verde?', 'Sala 1', 'Sala 3', 'Sala 4', 'Sala 5', 'Sala 6', '1'),
(11, 5, 'Se a sala 5 for pintada de branco, qual das seguintes alternativas pode ser verdadeira?', 'Sala 1 é pintada de azul.', 'Sala 2 é pintada de amarelo.', 'Sala 4 é pintada de verde.', 'Sala 4 é pintada de amarelo.', 'Sala 6 é pintada de azul.', '5'),
(12, 5, 'Se a sala 4 for pintada de branco e uma sala que é pintada de verde for vizinha de uma sala que é pintada de branco, qual das seguintes alternativas precisa ser verdadeira?', 'Sala 1 será pintada de verde.', 'Sala 1 será pintada de amarelo.', 'Sala 5 será pintada de azul.', 'Sala 6 será pintada de amarelo.', 'Sala 7 será pintada de azul.', '5'),
(13, 5, 'Qual das seguintes restrições, quando combinada com as restrições originais, tem como conseqüência a determinação completa da cor que cada sala deve ser pintada:', 'Sala 1 deve ser pintada de amarelo.', 'Sala 1 deve ser pintada de verde.', 'Sala 4 deve ser pintada de azul.', 'Sala 6 deve ser pintada de branco.', 'Sala 6 deve ser pintada de azul.', '4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pontuacao`
--

CREATE TABLE IF NOT EXISTS `pontuacao` (
  `idponto` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `idassunto` int(11) NOT NULL,
  `pontuacao` int(11) NOT NULL,
  PRIMARY KEY (`idponto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `pontuacao`
--

INSERT INTO `pontuacao` (`idponto`, `id_user`, `idassunto`, `pontuacao`) VALUES
(3, 1, 1, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE IF NOT EXISTS `resposta` (
  `id_resposta` int(10) NOT NULL AUTO_INCREMENT,
  `id_user` int(10) NOT NULL,
  `id_pergunta` int(10) NOT NULL,
  `op_escolhida` varchar(30) NOT NULL,
  `data` datetime NOT NULL,
  `nota` int(10) NOT NULL,
  PRIMARY KEY (`id_resposta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=368 ;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`id_resposta`, `id_user`, `id_pergunta`, `op_escolhida`, `data`, `nota`) VALUES
(339, 1, 0, '1', '2013-06-20 17:35:59', 10),
(340, 1, 1, '1', '2013-06-20 23:49:55', 0),
(341, 1, 0, '4', '2013-06-25 16:53:37', 0),
(342, 1, 1, '4', '2013-06-25 16:53:45', 0),
(343, 1, 0, '1', '2013-06-25 16:53:57', 10),
(344, 1, 1, '4', '2013-06-25 16:54:01', 10),
(345, 1, 0, '4', '2013-06-25 17:02:33', 0),
(346, 1, 1, '4', '2013-06-25 17:03:31', 0),
(347, 1, 2, '4', '2013-06-25 17:03:34', 0),
(348, 1, 3, '4', '2013-06-25 17:03:38', 0),
(349, 1, 0, '4', '2013-06-25 17:03:42', 0),
(350, 1, 1, '4', '2013-06-25 17:05:36', 0),
(351, 1, 2, '1', '2013-06-25 17:05:39', 0),
(352, 1, 3, '2', '2013-06-25 17:05:42', 0),
(353, 1, 0, '1', '2013-06-25 17:06:10', 0),
(354, 1, 1, '5', '2013-06-25 17:06:15', 0),
(355, 1, 2, '4', '2013-06-25 17:06:19', 0),
(356, 1, 3, '5', '2013-06-25 17:06:23', 0),
(357, 1, 0, '4', '2013-06-25 17:37:51', 0),
(358, 1, 1, '4', '2013-06-25 17:37:52', 0),
(359, 1, 0, '1', '2013-07-02 18:02:05', 10),
(360, 1, 1, '3', '2013-07-02 18:02:07', 0),
(361, 1, 0, '3', '2013-07-02 18:11:47', 0),
(362, 1, 1, '1', '2013-07-02 18:11:50', 0),
(363, 1, 0, '3', '2013-07-04 16:28:17', 0),
(364, 1, 1, '4', '2013-07-04 16:28:24', 10),
(365, 1, 0, '3', '2013-07-04 16:32:23', 0),
(366, 1, 1, '3', '2013-07-04 16:32:24', 0),
(367, 1, 0, '3', '2013-07-04 16:32:25', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `sexo` varchar(2) NOT NULL,
  `datanasc` date NOT NULL,
  `serieescolar` varchar(255) NOT NULL,
  `areainteresse` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `email`, `senha`, `sexo`, `datanasc`, `serieescolar`, `areainteresse`, `type`) VALUES
(1, 'SUANE SANTOS', 'iuri', 'suane.ssantos@gmail.com', '1234', 'F', '1990-10-15', 'Graduação', 'Programação', '3');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `ngm_assunto`
--
ALTER TABLE `ngm_assunto`
  ADD CONSTRAINT `ngm_assunto_ibfk_1` FOREIGN KEY (`ngm_rodada_id_rodada`) REFERENCES `ngm_rodada` (`id_rodada`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ngm_assunto_ibfk_2` FOREIGN KEY (`ngm_rodada_ngm_jogo_id_jogo`) REFERENCES `ngm_rodada` (`ngm_jogo_id_jogo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `ngm_pergunta`
--
ALTER TABLE `ngm_pergunta`
  ADD CONSTRAINT `ngm_pergunta_ibfk_1` FOREIGN KEY (`ngm_assunto_id_assunto`) REFERENCES `ngm_assunto` (`id_assunto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `ngm_resposta`
--
ALTER TABLE `ngm_resposta`
  ADD CONSTRAINT `ngm_resposta_ibfk_3` FOREIGN KEY (`ngm_pergunta_ngm_assunto_id_assunto`) REFERENCES `ngm_pergunta` (`ngm_assunto_id_assunto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ngm_resposta_ibfk_4` FOREIGN KEY (`ngm_pergunta_id_pergunta`) REFERENCES `ngm_pergunta` (`id_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `ngm_rodada`
--
ALTER TABLE `ngm_rodada`
  ADD CONSTRAINT `ngm_rodada_ibfk_1` FOREIGN KEY (`ngm_jogo_id_jogo`) REFERENCES `ngm_jogo` (`id_jogo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `pergunta_ibfk_1` FOREIGN KEY (`idassunto`) REFERENCES `assunto` (`idassunto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

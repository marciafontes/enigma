-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 04/07/2013 às 22h53min
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
  PRIMARY KEY (`id_assunto`),
  KEY `ngm_rodada_ngm_jogo_id_jogo` (`ngm_rodada_ngm_jogo_id_jogo`),
  KEY `ngm_rodada_id_rodada` (`ngm_rodada_id_rodada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(1, 'Jogo para o NPI', 'Este jogo foi feito para os alunos do NPI e todos os afins que queriam participar do jogo.', 10, 100, 'codigofonte de um programa ou informal;oes sovre tal coisa');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `ngm_rodada`
--

INSERT INTO `ngm_rodada` (`id_rodada`, `ngm_jogo_id_jogo`, `nomerodada`, `nperguntas`, `metadarodada`, `jogoid`, `introducao`, `premiorodada`) VALUES
(11, 1, 'rodada matematica', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(12, 1, 'rodada portugues', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(13, 1, 'rodada geografia', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(14, 1, 'rodada fisica', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(15, 1, 'rodada quimica', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(16, 1, 'rodada biologia', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(17, 1, 'rodada filosofia', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(18, 1, 'rodada redacao', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(19, 1, 'rodada sociologia', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
(20, 1, 'rodada ciências', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio');

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
  ADD CONSTRAINT `ngm_assunto_ibfk_2` FOREIGN KEY (`ngm_rodada_ngm_jogo_id_jogo`) REFERENCES `ngm_rodada` (`ngm_jogo_id_jogo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ngm_assunto_ibfk_1` FOREIGN KEY (`ngm_rodada_id_rodada`) REFERENCES `ngm_rodada` (`id_rodada`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

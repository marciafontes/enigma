-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 
-- Versão do Servidor: 5.5.24-log
-- Versão do PHP: 5.4.3

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=339 ;

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
(1, 'SUANE SANTOS', 'suane', 'suane.ssantos@gmail.com', '1234', 'F', '1990-10-15', 'Graduação', 'Programação', '3');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `pergunta_ibfk_1` FOREIGN KEY (`idassunto`) REFERENCES `assunto` (`idassunto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

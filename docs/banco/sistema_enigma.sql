-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 18/09/2013 às 18h02min
-- Versão do Servidor: 5.5.32
-- Versão do PHP: 5.3.10-1ubuntu3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `sistema_enigma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_avatar`
--

CREATE TABLE IF NOT EXISTS `ngm_avatar` (
  `id_avatar` int(11) NOT NULL,
  `avatar` blob,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_avatar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_classificacao`
--

CREATE TABLE IF NOT EXISTS `ngm_classificacao` (
  `id_classificacao` bigint(20) NOT NULL AUTO_INCREMENT,
  `olimpiadaid` bigint(20) DEFAULT NULL,
  `equipeid` bigint(20) DEFAULT NULL,
  `pontuacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_classificacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_desempenho`
--

CREATE TABLE IF NOT EXISTS `ngm_desempenho` (
  `id_desempenho` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_usuario_id_usuario` int(11) NOT NULL,
  `pontuacaotempo` int(11) DEFAULT NULL,
  `temporesposta` time DEFAULT NULL,
  `pontuacaoperg` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_desempenho`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_equipe`
--

CREATE TABLE IF NOT EXISTS `ngm_equipe` (
  `id_equipe` int(11) NOT NULL AUTO_INCREMENT,
  `nomeequipe` varchar(20) DEFAULT NULL,
  `lider` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_equipe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `ngm_equipe`
--

INSERT INTO `ngm_equipe` (`id_equipe`, `nomeequipe`, `lider`) VALUES
(1, 'sem equipe', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_feedback_juiz`
--

CREATE TABLE IF NOT EXISTS `ngm_feedback_juiz` (
  `id_feedbackjuiz` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_submissao_id_subimissao` int(11) NOT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `penalidade` int(10) unsigned DEFAULT NULL,
  `pontuacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_feedbackjuiz`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_formacao`
--

CREATE TABLE IF NOT EXISTS `ngm_formacao` (
  `id_formacao` int(11) NOT NULL AUTO_INCREMENT,
  `instituicao` varchar(50) DEFAULT NULL,
  `serie` int(11) DEFAULT NULL,
  `turma` varchar(30) DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_formacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_jogo`
--

CREATE TABLE IF NOT EXISTS `ngm_jogo` (
  `id_jogo` int(11) NOT NULL AUTO_INCREMENT,
  `jogo` varchar(100) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nrodada` int(11) DEFAULT NULL,
  `metajogo` int(11) DEFAULT NULL,
  `premiofinal` varchar(255) DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_jogo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `ngm_jogo`
--

INSERT INTO `ngm_jogo` (`id_jogo`, `jogo`, `descricao`, `nrodada`, `metajogo`, `premiofinal`, `tipo`) VALUES
(1, 'Jogo para o NPI', 'Este jogo foi feito para todos os alunos do NPI e afins', 10, 100, 'codigo fonte de um programa ou informaÃ§Ãµes sovre tal coisa', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_log`
--

CREATE TABLE IF NOT EXISTS `ngm_log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_usuario_id_usuario` int(11) NOT NULL,
  `datahora` datetime DEFAULT NULL,
  `ip` int(11) DEFAULT NULL,
  `informacao` varchar(255) DEFAULT NULL,
  `acao` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `modulo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_papeluser`
--

CREATE TABLE IF NOT EXISTS `ngm_papeluser` (
  `id_papeluser` int(11) NOT NULL AUTO_INCREMENT,
  `papeluser` varchar(20) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_papeluser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_pergunta`
--

CREATE TABLE IF NOT EXISTS `ngm_pergunta` (
  `id_pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_rodada_id_rodada` int(11) NOT NULL,
  `nomepergunta` varchar(20) DEFAULT NULL,
  `pergunta` varchar(255) DEFAULT NULL,
  `metapergunta` int(11) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pergunta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `ngm_pergunta`
--

INSERT INTO `ngm_pergunta` (`id_pergunta`, `ngm_rodada_id_rodada`, `nomepergunta`, `pergunta`, `metapergunta`, `tipo`) VALUES
(1, 1, 'Palindromes', 'Qual das seguintes cadeias é palíndrome quebrada?', 70, 'objetiva'),
(2, 1, 'Palindromes', 'Considere as seguintes cadeias:\r\n(i) BIT\r\n(ii) AAAEAEAEAAA\r\n(iii) SUBINOONIBUS\r\n(iv) TIPOERROTUDO\r\n(v) ERAREHUMANO\r\nQual das seguintes afirmações é correta?', 70, 'objetiva'),
(3, 2, 'Roland', 'Qual o número total de partidas deste torneio?', 70, 'objetiva'),
(4, 2, 'Roland', 'Quantas rodadas existem, no total, durante o torneio?', 70, 'objetiva');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_pontuacaoextra`
--

CREATE TABLE IF NOT EXISTS `ngm_pontuacaoextra` (
  `id_pontuacao` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_rodada_id_rodada` int(11) NOT NULL,
  `ngm_usuario_id_usuario` int(11) NOT NULL,
  `pontuacaoacesso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pontuacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_ranking`
--

CREATE TABLE IF NOT EXISTS `ngm_ranking` (
  `id_ranking` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `pontuacaogeral` int(11) DEFAULT NULL,
  `rodadaid` bigint(20) DEFAULT NULL,
  `datahora` datetime DEFAULT NULL,
  PRIMARY KEY (`id_ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_resposta`
--

CREATE TABLE IF NOT EXISTS `ngm_resposta` (
  `id_resposta` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_pergunta_id_pergunta` int(11) NOT NULL,
  `resposta` varchar(45) DEFAULT NULL,
  `feedback` varchar(45) DEFAULT NULL,
  `respostacorreta` int(10) unsigned DEFAULT NULL,
  `pontuacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_resposta`),
  KEY `ngm_pergunta_id_pergunta` (`ngm_pergunta_id_pergunta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `ngm_resposta`
--

INSERT INTO `ngm_resposta` (`id_resposta`, `ngm_pergunta_id_pergunta`, `resposta`, `feedback`, `respostacorreta`, `pontuacao`) VALUES
(1, 1, 'TODOS', 'Acertou', 1, 1),
(2, 1, 'AZULMARINHO', 'errou', 0, 0),
(3, 1, 'NAOMARQUEAQUI', 'errou', 0, 0),
(4, 1, 'PROGRAMAR', 'errou', 0, 0),
(5, 1, 'FIM', 'errou', 0, 0),
(6, 3, '64', 'errou', 0, 0),
(7, 3, '65', 'errou', 0, 0),
(8, 3, '127', 'acertou', 1, 1),
(9, 3, '128', 'errou', 0, 0),
(10, 3, 'nenhuma das acima', 'errou', 0, 0),
(11, 2, '(i) e (ii) são palíndromes puras', 'errou', 0, 0),
(12, 2, '(iv) e (v) são palíndromes quebradas', 'errou', 0, 0),
(13, 2, '(ii) não é palíndrome pura', 'errou', 0, 0),
(14, 2, '(iii) é palíndrome pura e (iv) é palíndrome q', 'acertou', 1, 1),
(15, 2, '(v) é palíndrome quebrada', 'errou', 0, 0),
(16, 4, '8', 'errou', 0, 0),
(17, 4, '9', 'errou', 0, 0),
(18, 4, '10', 'errou', 0, 0),
(19, 4, '16', 'errou', 0, 0),
(20, 4, 'nenhuma das acima', 'Paranéns acertou', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_rodada`
--

CREATE TABLE IF NOT EXISTS `ngm_rodada` (
  `id_rodada` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_jogo_id_jogo` int(11) NOT NULL,
  `nomerodada` varchar(50) NOT NULL,
  `nperguntas` int(11) DEFAULT NULL,
  `metarodada` int(11) DEFAULT NULL,
  `jogoid` bigint(20) DEFAULT NULL,
  `introducao` varchar(45) DEFAULT NULL,
  `premiorodada` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `assunto` varchar(100) DEFAULT NULL,
  `conteudoAssunto` varchar(2000) NOT NULL,
  PRIMARY KEY (`id_rodada`),
  KEY `ngm_jogo_id_jogo` (`ngm_jogo_id_jogo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `ngm_rodada`
--

INSERT INTO `ngm_rodada` (`id_rodada`, `ngm_jogo_id_jogo`, `nomerodada`, `nperguntas`, `metarodada`, `jogoid`, `introducao`, `premiorodada`, `feedback`, `assunto`, `conteudoAssunto`) VALUES
(1, 1, 'rodada matemÃ¡tica', 6, 70, 1, 'Introdução a Rodada', 'codigo Rodada Prêmio', NULL, 'Palindromes', 'Uma cadeia de caracteres é chamada de palíndrome pura se a seqüência de caracteres da esquerda\r\npara a direita é igual à seqüência de caracteres da direita para a esquerda (uma outra definição é\r\nque o primeiro caractere da cadeia deve ser igual ao último caractere, o segundo caractere seja\r\nigual ao penúltimo caractere, o terceiro caractere seja igual ao antepenúltimo caractere, e assim\r\npor diante). Por exemplo, as cadeias de caracteres ‘MIM’ , ‘AXXA’ e ‘ANANAGANANA’ são palíndromes puras.\r\n\r\nUma outra definição de palíndrome utiliza comparações entre caracteres, considerando que os caracteres são ordenados crescentemente de A até Z, ou seja, A < B < C < ... < Z. Uma cadeia de caracteres é chamada de palíndrome quebrada se a seqüência de resultados da comparação entre o primeiro e o segundo caracteres é igual ao resultado da comparação entre o último e o penúltimo caractere, e o resultado da comparação entre o segundo e o terceiro caracteres é igual ao resultado da comparação entre o penúltimo e o antepenúltimo caracteres, e assim por diante. Por exemplo, as cadeias ‘MIN’ e ‘ASSOCFUUS’ são palíndromes quebradas. Obviamente, toda cadeia que é palíndrome pura é também palíndrome quebrada.\r\n'),
(2, 1, 'rodada portuguÃªs', 6, 70, 1, 'Introdução Rodada', 'Codigo Premio Rodada', NULL, 'Rolangaros', 'No torneio de Roland Garros, um dos mais tradicionais torneios de tênis do mundo, realizado em\r\nParis, participam 128 tenistas. Em cada partida, participam dois jogadores, sendo que o vencedor\r\npassa para a próxima fase, e o perdedor é eliminado do torneio. A cada rodada, os tenistas que\r\nainda continuam no torneio participam de exatamente uma partida.'),
(3, 1, 'Rodada Historia', 6, 70, 1, 'Introdução da Rodada', 'Codigo Rodada do Premio', NULL, 'Cavalos', 'O jogo de xadrez, alÃ©m de ser um jogo que exige bastante raciocÃ­nio, Ã© uma Ã³tima fonte de quebra-\r\ncabeÃ§as. Esta tarefa trata de um destes quebra-cabeÃ§as, envolvendo os movimentos de uma de\r\nsuas peÃ§as, o cavalo. Os movimentos do cavalo sÃ£o ditos em â€˜Lâ€™, pois ele sempre deve andar duas casas em uma direÃ§Ã£o e uma casa na direÃ§Ã£o perpendicular. A figura acima ilustra os possÃ­veis\r\nmovimentos do cavalo, onde o caractere â€˜Câ€™ indica a posiÃ§Ã£o inicial e o caractere â€˜â€¢â€™ representa as\r\npossÃ­veis posiÃ§Ãµes finais. Ã‰ importante notar que o cavalo Ã© a Ãºnica peÃ§a que pode saltar sobre\r\noutras peÃ§as do xadrez. Note ainda que na representaÃ§Ã£o que usamos nÃ£o distinguimos casas brancas\r\nde casas pretas no tabuleiro.\r\nUsando os movimentos do cavalo, vocÃª deve determinar qual o nÃºmero mÃ­nimo de movimentos\r\ndo cavalo para ir de uma casa InÃ­cio atÃ© uma casa Final, sendo proibido que o cavalo â€˜pareâ€™ sobre\r\nalgumas casas especificadas durante a sequÃªncia de movimentos.\r\nSÃ£o fornecidas vÃ¡rias configuraÃ§Ãµes do tabuleiro (8 por 8 casas), com as casas marcadas com os\r\nseguintes valores: - I: inÃ­cio - F: Final - X: proibido.'),
(4, 1, 'Rodada Fisica', 6, 70, 1, 'Introdução da Rodada', 'Codigo Rodada do Premio', NULL, 'Biblioteca', 'Exatamente nove revistas devem ser expostas em uma das prateleiras da biblioteca da escola.\r\nVamos chamar a posiÃ§Ã£o mais Ã  esquerda de primeira, e a mais Ã  direita de nona posiÃ§Ã£o. Das\r\nnove revistas, quatro sÃ£o sobre ciÃªncia, trÃªs sÃ£o sobre esportes, e duas sÃ£o sobre culinÃ¡ria. As quatro\r\nrevistas sobre ciÃªncia devem ser colocados uma vizinha Ã  outra, e as duas revistas sobre culinÃ¡ria\r\ntambÃ©m devem ser dispostas uma vizinha Ã  outra (ou seja, uma ao lado da outra). As trÃªs\r\nrevistas sobre esportes nÃ£o precisam estar colocadas uma vizinha Ã  outra.'),
(5, 1, 'Rodada Quimica', 6, 70, 1, 'Introdução da Rodada', 'Codigo Rodada do Premio', NULL, 'Salas de Aula', 'Uma escola conta com sete salas de aula que devem ser pintadas. As salas estÃ£o localizadas em\r\num Ãºnico lado do corredor, sendo numeradas sequencialmente, de um a sete, da frente para os\r\nfundos do prÃ©dio.\r\nCada sala de aula deve ser pintada utilizando uma Ãºnica cor, de acordo com as seguintes restriÃ§Ãµes:\r\nâ€¢ Duas salas devem ser pintadas de branco; duas salas devem ser pintadas de azul; duas salas\r\ndevem ser pintadas de verde; e uma sala deve ser pintada de amarelo.\r\nâ€¢ As duas salas pintadas de verde devem ser vizinhas (contÃ­guas).\r\nâ€¢ As duas salas pintadas de azul nÃ£o podem ser vizinhas (contÃ­guas).\r\nâ€¢ A sala pintada de amarelo nÃ£o pode ser vizinha de uma sala pintada de branco.\r\nâ€¢ A sala nÃºmero 3 deve ser pintada de branco.'),
(6, 1, 'Rodada Biologia', 6, 70, 1, 'Introdução da Rodada', 'Codigo Rodada do Premio', NULL, 'Salas de Aula', 'Uma escola conta com sete salas de aula que devem ser pintadas. As salas estÃ£o localizadas em\r\num Ãºnico lado do corredor, sendo numeradas sequencialmente, de um a sete, da frente para os\r\nfundos do prÃ©dio.\r\nCada sala de aula deve ser pintada utilizando uma Ãºnica cor, de acordo com as seguintes restriÃ§Ãµes:\r\nâ€¢ Duas salas devem ser pintadas de branco; duas salas devem ser pintadas de azul; duas salas\r\ndevem ser pintadas de verde; e uma sala deve ser pintada de amarelo.\r\nâ€¢ As duas salas pintadas de verde devem ser vizinhas (contÃ­guas).\r\nâ€¢ As duas salas pintadas de azul nÃ£o podem ser vizinhas (contÃ­guas).\r\nâ€¢ A sala pintada de amarelo nÃ£o pode ser vizinha de uma sala pintada de branco.\r\nâ€¢ A sala nÃºmero 3 deve ser pintada de branco.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_submissao`
--

CREATE TABLE IF NOT EXISTS `ngm_submissao` (
  `id_subimissao` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_usuario_id_usuario` int(11) NOT NULL,
  `ngm_resposta_id_resposta` int(11) NOT NULL,
  `ngm_pergunta_id_pergunta` int(11) NOT NULL,
  `ngm_equipe_id_equipe` int(11) DEFAULT NULL,
  `datahora` datetime DEFAULT NULL,
  `solucaosubmetida` text,
  PRIMARY KEY (`id_subimissao`),
  KEY `ngm_usuario_id_usuario` (`ngm_usuario_id_usuario`),
  KEY `ngm_resposta_id_resposta` (`ngm_resposta_id_resposta`),
  KEY `ngm_pergunta_id_pergunta` (`ngm_pergunta_id_pergunta`),
  KEY `ngm_equipe_id_equipe` (`ngm_equipe_id_equipe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_usuario`
--

CREATE TABLE IF NOT EXISTS `ngm_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_formacao_id_formacao` int(11) NOT NULL,
  `ngm_avatar_id_avatar` int(11) NOT NULL,
  `ngm_papeluser_id_papeluser` int(11) NOT NULL,
  `usuario` varchar(150) DEFAULT NULL,
  `senha` varchar(160) DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `sobrenome` varchar(60) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `datanasc` date DEFAULT NULL,
  `celular` char(10) DEFAULT NULL,
  `fone` char(10) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `endereço` varchar(255) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `cep` char(8) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `google` varchar(100) DEFAULT NULL,
  `outros` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `blog` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `site` varchar(100) DEFAULT NULL,
  `jogofavorito` varchar(100) DEFAULT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `status_2` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `ngm_usuario`
--

INSERT INTO `ngm_usuario` (`id`, `ngm_formacao_id_formacao`, `ngm_avatar_id_avatar`, `ngm_papeluser_id_papeluser`, `usuario`, `senha`, `nome`, `sobrenome`, `email`, `sexo`, `datanasc`, `celular`, `fone`, `cidade`, `estado`, `pais`, `endereço`, `bairro`, `cep`, `rg`, `cpf`, `facebook`, `google`, `outros`, `skype`, `blog`, `twitter`, `site`, `jogofavorito`, `matricula`, `status_2`) VALUES
(1, 1, 1, 1, 'iuri', '1234', 'iuri', 'gagari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `ngm_resposta`
--
ALTER TABLE `ngm_resposta`
  ADD CONSTRAINT `ngm_resposta_ibfk_1` FOREIGN KEY (`ngm_pergunta_id_pergunta`) REFERENCES `ngm_pergunta` (`id_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `ngm_rodada`
--
ALTER TABLE `ngm_rodada`
  ADD CONSTRAINT `ngm_rodada_ibfk_1` FOREIGN KEY (`ngm_jogo_id_jogo`) REFERENCES `ngm_jogo` (`id_jogo`);

--
-- Restrições para a tabela `ngm_submissao`
--
ALTER TABLE `ngm_submissao`
  ADD CONSTRAINT `ngm_submissao_ibfk_1` FOREIGN KEY (`ngm_usuario_id_usuario`) REFERENCES `ngm_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ngm_submissao_ibfk_2` FOREIGN KEY (`ngm_resposta_id_resposta`) REFERENCES `ngm_resposta` (`id_resposta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ngm_submissao_ibfk_3` FOREIGN KEY (`ngm_pergunta_id_pergunta`) REFERENCES `ngm_pergunta` (`id_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ngm_submissao_ibfk_4` FOREIGN KEY (`ngm_equipe_id_equipe`) REFERENCES `ngm_equipe` (`id_equipe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

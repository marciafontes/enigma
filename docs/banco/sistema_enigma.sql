-- phpMyAdmin SQL Dump
-- version 4.0.3
-- http://www.phpmyadmin.net
--
-- M·quina: 127.0.0.1
-- Data de CriaÁ„o: 21-Out-2013 ‡s 00:32
-- Vers„o do servidor: 5.6.12-log
-- vers„o do PHP: 5.5.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Base de Dados: `sistema_enigma`
--
CREATE DATABASE IF NOT EXISTS `sistema_enigma` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sistema_enigma`;

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
(1, 'Jogo para o NPI', 'Este jogo foi feito para todos os alunos do NPI e afins', 10, 100, 'codigo fonte de um programa ou informa√ß√µes sovre tal coisa', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `ngm_pergunta`
--

INSERT INTO `ngm_pergunta` (`id_pergunta`, `ngm_rodada_id_rodada`, `nomepergunta`, `pergunta`, `metapergunta`, `tipo`) VALUES
(1, 1, 'PERGUNTA 01', 'COMANDO PERGUNTA 01', 70, 'objetiva'),
(2, 1, 'PERGUNTA 02', 'COMANDO PERGUNTA 02', 70, 'objetiva'),
(3, 1, 'PERGUNTA 03', 'COMANDO PERGUNTA 03', 70, 'objetiva'),
(4, 1, 'PERGUNTA 04', 'COMANDO PERGUNTA 04', 70, 'objetiva'),
(5, 1, 'PERGUNTA 05', 'COMANDO PERGUNTA 05', 70, 'objetiva'),
(6, 1, 'PERGUNTA 06', 'COMANDO PERGUNTA 06', 70, 'objetiva');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Extraindo dados da tabela `ngm_resposta`
--

INSERT INTO `ngm_resposta` (`id_resposta`, `ngm_pergunta_id_pergunta`, `resposta`, `feedback`, `respostacorreta`, `pontuacao`) VALUES
(81, 1, 'RESPOSTA PERGUNTA 01', 'FEEDBACK NEGATIVO', 0, 0),
(82, 1, 'RESPOSTA PERGUNTA 01', 'FEEDBACK NEGATIVO', 0, 0),
(83, 1, 'RESPOSTA PERGUNTA 01', 'FEEDBACK NEGATIVO', 0, 0),
(84, 1, 'RESPOSTA PERGUNTA 01 [ok]', 'FEEDBACK POSITIVO', 1, 1),
(85, 1, 'RESPOSTA PERGUNTA 01', 'FEEDBACK NEGATIVO', 0, 0),
(86, 2, 'RESPOSTA PERGUNTA 02', 'FEEDBACK NEGATIVO', 0, 0),
(87, 2, 'RESPOSTA PERGUNTA 02 [ok]', 'FEEDBACK POSITIVO', 1, 1),
(88, 2, 'RESPOSTA PERGUNTA 02', 'FEEDBACK NEGATIVO', 0, 0),
(89, 2, 'RESPOSTA PERGUNTA 02', 'FEEDBACK NEGATIVO', 0, 0),
(90, 2, 'RESPOSTA PERGUNTA 02', 'FEEDBACK NEGATIVO', 0, 0),
(91, 3, 'RESPOSTA PERGUNTA 03 [ok]', 'FEEDBACK POSITIVO', 1, 1),
(92, 3, 'RESPOSTA PERGUNTA 03', 'FEEDBACK NEGATIVO', 0, 0),
(93, 3, 'RESPOSTA PERGUNTA 03', 'FEEDBACK NEGATIVO', 0, 0),
(94, 3, 'RESPOSTA PERGUNTA 03', 'FEEDBACK NEGATIVO', 0, 0),
(95, 3, 'RESPOSTA PERGUNTA 03', 'FEEDBACK NEGATIVO', 0, 0),
(96, 4, 'RESPOSTA PERGUNTA 04', 'FEEDBACK NEGATIVO', 0, 0),
(97, 4, 'RESPOSTA PERGUNTA 04', 'FEEDBACK NEGATIVO', 0, 0),
(98, 4, 'RESPOSTA PERGUNTA 04', 'FEEDBACK NEGATIVO', 0, 0),
(99, 4, 'RESPOSTA PERGUNTA 04', 'FEEDBACK NEGATIVO', 0, 0),
(100, 4, 'RESPOSTA PERGUNTA 04 [ok]', 'FEEDBACK POSITIVO', 1, 1),
(101, 5, 'RESPOSTA PERGUNTA 05', 'FEEDBACK NEGATIVO', 0, 0),
(102, 5, 'RESPOSTA PERGUNTA 05 [ok]', 'FEEDBACK POSITIVO', 1, 1),
(103, 5, 'RESPOSTA PERGUNTA 05', 'FEEDBACK NEGATIVO', 0, 0),
(104, 5, 'RESPOSTA PERGUNTA 05', 'FEEDBACK NEGATIVO', 0, 0),
(105, 5, 'RESPOSTA PERGUNTA 05', 'FEEDBACK NEGATIVO', 0, 0),
(106, 6, 'RESPOSTA PERGUNTA 06', 'FEEDBACK NEGATIVO', 0, 0),
(107, 6, 'RESPOSTA PERGUNTA 06', 'FEEDBACK NEGATIVO', 0, 0),
(108, 6, 'RESPOSTA PERGUNTA 06', 'FEEDBACK NEGATIVO', 0, 0),
(109, 6, 'RESPOSTA PERGUNTA 06 [ok]', 'FEEDBACK POSITIVO', 1, 1),
(110, 6, 'RESPOSTA PERGUNTA 06', 'FEEDBACK NEGATIVO', 0, 0);

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
(1, 1, 'Matem·tica', 3, 70, 1, 'IntroduÁ„o a Rodada', 'codigo Rodada PrÍmio', 'A RODADA FOI BOA!', 'Palindromes', 'ASSUNTO DA RODADA 01'),
(2, 1, 'L. Portuguesa', 6, 70, 1, 'IntroduÁ„o Rodada', 'Codigo Premio Rodada', NULL, 'Rolangaros', 'No torneio de Roland Garros, um dos mais tradicionais torneios de tÍnis do mundo, realizado em\r\nParis, participam 128 tenistas. Em cada partida, participam dois jogadores, sendo que o vencedor\r\npassa para a prÛxima fase, e o perdedor È eliminado do torneio. A cada rodada, os tenistas que\r\nainda continuam no torneio participam de exatamente uma partida.'),
(3, 1, 'HistÛria', 6, 70, 1, 'IntroduÁ„o da Rodada', 'Codigo Rodada do Premio', NULL, 'Cavalos', 'O jogo de xadrez, al√©m de ser um jogo que exige bastante racioc√≠nio, √© uma √≥tima fonte de quebra-\r\ncabe√ßas. Esta tarefa trata de um destes quebra-cabe√ßas, envolvendo os movimentos de uma de\r\nsuas pe√ßas, o cavalo. Os movimentos do cavalo s√£o ditos em ‚EUR~L‚EURTM, pois ele sempre deve andar duas casas em uma dire√ß√£o e uma casa na dire√ß√£o perpendicular. A figura acima ilustra os poss√≠veis\r\nmovimentos do cavalo, onde o caractere ‚EUR~C‚EURTM indica a posi√ß√£o inicial e o caractere ‚EUR~‚EUR¢‚EURTM representa as\r\nposs√≠veis posi√ß√µes finais. √o/oo importante notar que o cavalo √© a √∫nica pe√ßa que pode saltar sobre\r\noutras pe√ßas do xadrez. Note ainda que na representa√ß√£o que usamos n√£o distinguimos casas brancas\r\nde casas pretas no tabuleiro.\r\nUsando os movimentos do cavalo, voc√™ deve determinar qual o n√∫mero m√≠nimo de movimentos\r\ndo cavalo para ir de uma casa In√≠cio at√© uma casa Final, sendo proibido que o cavalo ‚EUR~pare‚EURTM sobre\r\nalgumas casas especificadas durante a sequ√™ncia de movimentos.\r\nS√£o fornecidas v√°rias configura√ß√µes do tabuleiro (8 por 8 casas), com as casas marcadas com os\r\nseguintes valores: - I: in√≠cio - F: Final - X: proibido.'),
(4, 1, 'FÌsica', 6, 70, 1, 'IntroduÁ„o da Rodada', 'Codigo Rodada do Premio', NULL, 'Biblioteca', 'Exatamente nove revistas devem ser expostas em uma das prateleiras da biblioteca da escola.\r\nVamos chamar a posi√ß√£o mais √  esquerda de primeira, e a mais √  direita de nona posi√ß√£o. Das\r\nnove revistas, quatro s√£o sobre ci√™ncia, tr√™s s√£o sobre esportes, e duas s√£o sobre culin√°ria. As quatro\r\nrevistas sobre ci√™ncia devem ser colocados uma vizinha √  outra, e as duas revistas sobre culin√°ria\r\ntamb√©m devem ser dispostas uma vizinha √  outra (ou seja, uma ao lado da outra). As tr√™s\r\nrevistas sobre esportes n√£o precisam estar colocadas uma vizinha √  outra.'),
(5, 1, 'QuÌmica', 6, 70, 1, 'IntroduÁ„o da Rodada', 'Codigo Rodada do Premio', NULL, 'Salas de Aula', 'Uma escola conta com sete salas de aula que devem ser pintadas. As salas est√£o localizadas em\r\num √∫nico lado do corredor, sendo numeradas sequencialmente, de um a sete, da frente para os\r\nfundos do pr√©dio.\r\nCada sala de aula deve ser pintada utilizando uma √∫nica cor, de acordo com as seguintes restri√ß√µes:\r\n‚EUR¢ Duas salas devem ser pintadas de branco; duas salas devem ser pintadas de azul; duas salas\r\ndevem ser pintadas de verde; e uma sala deve ser pintada de amarelo.\r\n‚EUR¢ As duas salas pintadas de verde devem ser vizinhas (cont√≠guas).\r\n‚EUR¢ As duas salas pintadas de azul n√£o podem ser vizinhas (cont√≠guas).\r\n‚EUR¢ A sala pintada de amarelo n√£o pode ser vizinha de uma sala pintada de branco.\r\n‚EUR¢ A sala n√∫mero 3 deve ser pintada de branco.'),
(6, 1, 'Biologia', 6, 70, 1, 'IntroduÁ„o da Rodada', 'Codigo Rodada do Premio', NULL, 'Salas de Aula', 'Uma escola conta com sete salas de aula que devem ser pintadas. As salas est√£o localizadas em\r\num √∫nico lado do corredor, sendo numeradas sequencialmente, de um a sete, da frente para os\r\nfundos do pr√©dio.\r\nCada sala de aula deve ser pintada utilizando uma √∫nica cor, de acordo com as seguintes restri√ß√µes:\r\n‚EUR¢ Duas salas devem ser pintadas de branco; duas salas devem ser pintadas de azul; duas salas\r\ndevem ser pintadas de verde; e uma sala deve ser pintada de amarelo.\r\n‚EUR¢ As duas salas pintadas de verde devem ser vizinhas (cont√≠guas).\r\n‚EUR¢ As duas salas pintadas de azul n√£o podem ser vizinhas (cont√≠guas).\r\n‚EUR¢ A sala pintada de amarelo n√£o pode ser vizinha de uma sala pintada de branco.\r\n‚EUR¢ A sala n√∫mero 3 deve ser pintada de branco.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ngm_submissao`
--

CREATE TABLE IF NOT EXISTS `ngm_submissao` (
  `id_submissao` int(11) NOT NULL AUTO_INCREMENT,
  `ngm_usuario_id_usuario` int(11) NOT NULL,
  `ngm_resposta_id_resposta` int(11) NOT NULL,
  `ngm_pergunta_id_pergunta` int(11) NOT NULL,
  `ngm_equipe_id_equipe` int(11) DEFAULT NULL,
  `datahora` datetime DEFAULT NULL,
  `solucaosubmetida` text,
  PRIMARY KEY (`id_submissao`,`ngm_usuario_id_usuario`,`ngm_resposta_id_resposta`,`ngm_pergunta_id_pergunta`),
  KEY `ngm_usuario_id_usuario` (`ngm_usuario_id_usuario`),
  KEY `ngm_resposta_id_resposta` (`ngm_resposta_id_resposta`),
  KEY `ngm_pergunta_id_pergunta` (`ngm_pergunta_id_pergunta`),
  KEY `ngm_equipe_id_equipe` (`ngm_equipe_id_equipe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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
  `endereÁo` varchar(255) DEFAULT NULL,
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

INSERT INTO `ngm_usuario` (`id`, `ngm_formacao_id_formacao`, `ngm_avatar_id_avatar`, `ngm_papeluser_id_papeluser`, `usuario`, `senha`, `nome`, `sobrenome`, `email`, `sexo`, `datanasc`, `celular`, `fone`, `cidade`, `estado`, `pais`, `endereÁo`, `bairro`, `cep`, `rg`, `cpf`, `facebook`, `google`, `outros`, `skype`, `blog`, `twitter`, `site`, `jogofavorito`, `matricula`, `status_2`) VALUES
(1, 1, 1, 1, 'iuri', '1234', 'iuri', 'gagari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `ngm_resposta`
--
ALTER TABLE `ngm_resposta`
  ADD CONSTRAINT `ngm_resposta_ibfk_1` FOREIGN KEY (`ngm_pergunta_id_pergunta`) REFERENCES `ngm_pergunta` (`id_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `ngm_rodada`
--
ALTER TABLE `ngm_rodada`
  ADD CONSTRAINT `ngm_rodada_ibfk_1` FOREIGN KEY (`ngm_jogo_id_jogo`) REFERENCES `ngm_jogo` (`id_jogo`);

--
-- Limitadores para a tabela `ngm_submissao`
--
ALTER TABLE `ngm_submissao`
  ADD CONSTRAINT `ngm_submissao_ibfk_1` FOREIGN KEY (`ngm_usuario_id_usuario`) REFERENCES `ngm_usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ngm_submissao_ibfk_2` FOREIGN KEY (`ngm_resposta_id_resposta`) REFERENCES `ngm_resposta` (`id_resposta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ngm_submissao_ibfk_3` FOREIGN KEY (`ngm_pergunta_id_pergunta`) REFERENCES `ngm_pergunta` (`id_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ngm_submissao_ibfk_4` FOREIGN KEY (`ngm_equipe_id_equipe`) REFERENCES `ngm_equipe` (`id_equipe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

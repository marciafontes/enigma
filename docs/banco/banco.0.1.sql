CREATE DATABASE sistema_enigma;
USE sistema_enigma;

CREATE TABLE ngm_avatar (
  id_avatar INT NOT NULL,
  avatar BLOB NULL,
  descricao VARCHAR(255) NULL,
  PRIMARY KEY(id_avatar)
);

CREATE TABLE ngm_classificacao (
  id_classificacao BIGINT NOT NULL AUTO_INCREMENT,
  olimpiadaid BIGINT NULL,
  equipeid BIGINT NULL,
  pontuacao INT NULL,
  PRIMARY KEY(id_classificacao)
);

CREATE TABLE ngm_desempenho (
  id_desempenho INT NOT NULL AUTO_INCREMENT,
  ngm_usuario_id_usuario INT NOT NULL,
  pontuacaotempo INT NULL,
  temporesposta TIME NULL,
  pontuacaoperg INT NULL,
  PRIMARY KEY(id_desempenho)
);

CREATE TABLE ngm_equipe (
  id_equipe INT NOT NULL AUTO_INCREMENT,
  ngm_usuario_id_usuario INT NOT NULL,
  nomeequipe VARCHAR(20) NULL,
  lider INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_equipe)
);

CREATE TABLE ngm_feedback_juiz (
  id_feedbackjuiz INT NOT NULL AUTO_INCREMENT,
  ngm_submissao_id_subimissao INT NOT NULL,
  feedback VARCHAR(255) NULL,
  penalidade INTEGER UNSIGNED NULL,
  pontuacao INT NULL,
  PRIMARY KEY(id_feedbackjuiz)
);

CREATE TABLE ngm_formacao (
  id_formacao INT NOT NULL AUTO_INCREMENT,
  instituicao VARCHAR(50) NULL,
  serie INT NULL,
  turma VARCHAR(30) NULL,
  turno VARCHAR(20) NULL,
  PRIMARY KEY(id_formacao)
);

CREATE TABLE ngm_jogo (
  id_jogo INT NOT NULL AUTO_INCREMENT,
  jogo VARCHAR(100) NULL,
  descricao VARCHAR(255) NULL,
  nrodada INT NULL,
  metajogo INT NULL,
  premiofinal VARCHAR(255) NULL,
  tipo CHAR NULL,
  PRIMARY KEY(id_jogo)
);

CREATE TABLE ngm_log (
  id_log INT NOT NULL AUTO_INCREMENT,
  ngm_usuario_id_usuario INT NOT NULL,
  datahora DATETIME NULL,
  ip INT NULL,
  informacao VARCHAR(255) NULL,
  acao VARCHAR(100) NULL,
  url VARCHAR(100) NULL,
  modulo VARCHAR(100) NULL,
  PRIMARY KEY(id_log)
);

CREATE TABLE ngm_papeluser (
  id_papeluser INT NOT NULL AUTO_INCREMENT,
  papeluser VARCHAR(20) NULL,
  descricao VARCHAR(255) NULL,
  PRIMARY KEY(id_papeluser)
);

CREATE TABLE ngm_pergunta (
  id_pergunta INT NOT NULL AUTO_INCREMENT,
  ngm_rodada_id_rodada INT NOT NULL,
  nomepergunta VARCHAR(20) NULL,
  pergunta VARCHAR(255) NULL,
  metapergunta INT NULL,
  tipo VARCHAR(10) NULL,
  PRIMARY KEY(id_pergunta)
);

CREATE TABLE ngm_pontuacaoextra (
  id_pontuacao INT NOT NULL AUTO_INCREMENT,
  ngm_rodada_id_rodada INT NOT NULL,
  ngm_usuario_id_usuario INT NOT NULL,
  pontuacaoacesso INT NULL,
  PRIMARY KEY(id_pontuacao)
);

CREATE TABLE ngm_ranking (
  id_ranking BIGINT NOT NULL AUTO_INCREMENT,
  userid BIGINT NULL,
  pontuacaogeral INT NULL,
  rodadaid BIGINT NULL,
  datahora DATETIME NULL,
  PRIMARY KEY(id_ranking)
);

CREATE TABLE ngm_resposta (
  id_resposta INT NOT NULL AUTO_INCREMENT,
  ngm_pergunta_id_pergunta INT NOT NULL,
  resposta VARCHAR(45) NULL,
  feedback VARCHAR(45) NULL,
  respostacorreta INTEGER UNSIGNED NULL,
  pontuacao INT NULL,
  PRIMARY KEY(id_resposta)
);

CREATE TABLE ngm_rodada (
  id_rodada INT NOT NULL AUTO_INCREMENT,
  ngm_jogo_id_jogo INT NOT NULL,
  nperguntas INT NULL,
  metarodada INT NULL,
  jogoid BIGINT NULL,
  introducao VARCHAR(45) NULL,
  premiorodada VARCHAR(255) NULL,
  feedback VARCHAR(255) NULL,
  assunto VARCHAR(100) NULL,
  PRIMARY KEY(id_rodada)
);

CREATE TABLE ngm_submissao (
  id_subimissao INT NOT NULL AUTO_INCREMENT,
  ngm_usuario_id_usuario INT NOT NULL,
  ngm_resposta_id_resposta INT NOT NULL,
  ngm_pergunta_id_pergunta INT NOT NULL,
  ngm_equipe_id_equipe INT NOT NULL,
  datahora DATETIME NULL,
  solucaosubmetida TEXT NULL,
  PRIMARY KEY(id_subimissao)
);

CREATE TABLE ngm_usuario (
  id_usuario INT NOT NULL,
  ngm_formacao_id_formacao INT NOT NULL,
  ngm_avatar_id_avatar INT NOT NULL,
  ngm_papeluser_id_papeluser INT NOT NULL,
  login VARCHAR(150) NULL,
  senha VARCHAR(160) NULL,
  nome VARCHAR(60) NULL,
  sobrenome VARCHAR(60) NULL,
  email VARCHAR(150) NULL,
  sexo VARCHAR(1) NULL,
  datanasc DATE NULL,
  celular CHAR(10) NULL,
  fone CHAR(10) NULL,
  cidade VARCHAR(100) NULL,
  estado VARCHAR(2) NULL,
  pais VARCHAR(50) NULL,
  endereço VARCHAR(255) NULL,
  bairro VARCHAR(60) NULL,
  cep CHAR(8) NULL,
  rg VARCHAR(20) NULL,
  cpf VARCHAR(11) NULL,
  facebook VARCHAR(100) NULL,
  google VARCHAR(100) NULL,
  outros VARCHAR(100) NULL,
  skype VARCHAR(100) NULL,
  blog VARCHAR(100) NULL,
  twitter VARCHAR(100) NULL,
  site VARCHAR(100) NULL,
  jogofavorito VARCHAR(100) NULL,
  matricula VARCHAR(20) NULL,
  status_2 CHAR(1) NULL,
  PRIMARY KEY(id_usuario)
);
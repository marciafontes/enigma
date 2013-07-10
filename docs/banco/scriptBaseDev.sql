USE ngm_enigma;

SET FOREIGN_KEY_CHECKS=0;

TRUNCATE ngm_jogo;
TRUNCATE ngm_rodada;
TRUNCATE ngm_assunto;
TRUNCATE ngm_pergunta;
TRUNCATE ngm_resposta;

SET FOREIGN_KEY_CHECKS=1;

INSERT INTO `ngm_jogo`
	(`id_jogo`, `jogo`, `descricao`, `nrodada`, `metajogo`, `premiofinal`) 
VALUES
	(1,'Jogo para o NPI','Este jogo foi feito para todos os alunos do NPI e afins',10,100,'codigo fonte de um programa ou informações sovre tal coisa');

INSERT INTO `ngm_rodada` 
	(`id_rodada`, `ngm_jogo_id_jogo`, `nomerodada`, `nperguntas`, `metadarodada`, `jogoid`, `introducao`, `premiorodada`) 
VALUES
	(1, 1, 'rodada matemática', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
	(2, 1, 'rodada português', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
	(3, 1, 'rodada história', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
	(4, 1, 'rodada fisica', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
	(5, 1, 'rodada química', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio'),
	(6, 1, 'rodada biologia', 6, 70, 1, 'Introdução da rodada ', 'código rodada do prêmio');

INSERT INTO `ngm_assunto`
	(`id_assunto`,`ngm_rodada_ngm_jogo_id_jogo`, `ngm_rodada_id_rodada`, `nome`, `descricao`) 
VALUES 
	(1,1,1,'Assunto 1','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(2,1,1,'Assunto 2','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(3,1,1,'Assunto 3','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(4,1,2,'Assunto 4','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(5,1,2,'Assunto 5','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(6,1,3,'Assunto 6','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(7,1,3,'Assunto 7','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(8,1,4,'Assunto 8','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(9,1,4,'Assunto 9','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(10,1,5,'Assunto 10','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(11,1,5,'Assunto 11','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'),
	(12,1,6,'Assunto 12','Descrição completa do assunto Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt magna in odio egestas rhoncus. Duis fermentum blandit nulla. Nullam justo felis, dapibus imperdiet eros sit amet, tempus laoreet massa. Aenean sit amet lobortis urna. Quisque aliquet pulvinar ante, dapibus convallis enim venenatis tincidunt. Sed congue felis in sagittis tincidunt. Mauris bibendum ligula scelerisque, fermentum sem nec, euismod nisi. Nulla vulputate eget mauris sed tempus. Nulla eu fermentum nisl, posuere vestibulum metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.');

INSERT INTO `ngm_pergunta`
	(`id_pergunta`, `ngm_assunto_id_assunto`, `comandoPergunta`) 
VALUES 
	(1,1,'pergunta 1?'),
	(2,1,'pergunta 2?'),
	(3,1,'pergunta 3?'),
	(4,1,'pergunta 4?'),
	(5,1,'pergunta 5?'),
	(6,1,'pergunta 6?'),
	(7,2,'pergunta 7?'),
	(8,2,'pergunta 8?'),
	(9,2,'pergunta 9?'),
	(10,2,'pergunta 10?'),
	(11,2,'pergunta 11?'),
	(12,3,'pergunta 12?'),
	(13,3,'pergunta 13?'),
	(14,3,'pergunta 14?'),
	(15,3,'pergunta 15?'),
	(16,3,'pergunta 16?'),
	(17,4,'pergunta 17?'),
	(18,4,'pergunta 18?'),
	(19,4,'pergunta 19?'),
	(20,4,'pergunta 20?'),
	(21,4,'pergunta 21?'),
	(22,5,'pergunta 22?'),
	(23,5,'pergunta 23?'),
	(24,5,'pergunta 24?'),
	(25,5,'pergunta 25?'),
	(26,5,'pergunta 26?'),
	(27,6,'pergunta 27?'),
	(28,6,'pergunta 28?'),
	(29,6,'pergunta 29?'),
	(30,6,'pergunta 30?'),
	(31,6,'pergunta 31?'),
	(32,7,'pergunta 32?'),
	(33,7,'pergunta 33?'),
	(34,7,'pergunta 34?'),
	(35,7,'pergunta 35?');
	
INSERT INTO `ngm_resposta`
	(`ngm_pergunta_ngm_assunto_id_assunto`, `ngm_pergunta_id_pergunta`, `descricao`, `correta`)
VALUES
	(1,1,'resposta 1',1),
	(1,1,'resposta 2',0),
	(1,1,'resposta 3',0),
	(1,1,'resposta 4',0),
	(1,1,'resposta 5',0),
	
	(1,2,'resposta 1',0),
	(1,2,'resposta 2',1),
	(1,2,'resposta 3',0),
	(1,2,'resposta 4',0),
	(1,2,'resposta 5',0),
	
	(1,3,'resposta 1',0),
	(1,3,'resposta 2',1),
	(1,3,'resposta 3',0),
	(1,3,'resposta 4',0),
	(1,3,'resposta 5',0),
	
	(1,4,'resposta 1',0),
	(1,4,'resposta 2',1),
	(1,4,'resposta 3',0),
	(1,4,'resposta 4',0),
	(1,4,'resposta 5',0),
	
	(1,5,'resposta 1',0),
	(1,5,'resposta 2',0),
	(1,5,'resposta 3',1),
	(1,5,'resposta 4',0),
	(1,5,'resposta 5',0),
	
	(1,6,'resposta 1',0),
	(1,6,'resposta 2',0),
	(1,6,'resposta 3',1),
	(1,6,'resposta 4',0),
	(1,6,'resposta 5',0),
	
	(2,7,'resposta 1',0),
	(2,7,'resposta 2',0),
	(2,7,'resposta 3',1),
	(2,7,'resposta 4',0),
	(2,7,'resposta 5',0),
	
	(2,8,'resposta 1',0),
	(2,8,'resposta 2',0),
	(2,8,'resposta 3',0),
	(2,8,'resposta 4',0),
	(2,8,'resposta 5',1),
	
	(2,9,'resposta 1',1),
	(2,9,'resposta 2',0),
	(2,9,'resposta 3',0),
	(2,9,'resposta 4',0),
	(2,9,'resposta 5',0),
	
	(2,10,'resposta 1',0),
	(2,10,'resposta 2',0),
	(2,10,'resposta 3',0),
	(2,10,'resposta 4',0),
	(2,10,'resposta 5',1),
	
	(2,11,'resposta 1',0),
	(2,11,'resposta 2',0),
	(2,11,'resposta 3',1),
	(2,11,'resposta 4',0),
	(2,11,'resposta 5',0),
	
	(3,12,'resposta 1',0),
	(3,12,'resposta 2',1),
	(3,12,'resposta 3',0),
	(3,12,'resposta 4',0),
	(3,12,'resposta 5',0),
	
	(3,13,'resposta 1',0),
	(3,13,'resposta 2',1),
	(3,13,'resposta 3',0),
	(3,13,'resposta 4',0),
	(3,13,'resposta 5',0),
	
	(3,14,'resposta 1',0),
	(3,14,'resposta 2',1),
	(3,14,'resposta 3',0),
	(3,14,'resposta 4',0),
	(3,14,'resposta 5',0),
	
	(3,15,'resposta 1',0),
	(3,15,'resposta 2',1),
	(3,15,'resposta 3',0),
	(3,15,'resposta 4',0),
	(3,15,'resposta 5',0),
	
	(3,16,'resposta 1',0),
	(3,16,'resposta 2',1),
	(3,16,'resposta 3',0),
	(3,16,'resposta 4',0),
	(3,16,'resposta 5',0),
	
	(4,17,'resposta 1',0),
	(4,17,'resposta 2',1),
	(4,17,'resposta 3',0),
	(4,17,'resposta 4',0),
	(4,17,'resposta 5',0),
	
	(4,18,'resposta 1',0),
	(4,18,'resposta 2',1),
	(4,18,'resposta 3',0),
	(4,18,'resposta 4',0),
	(4,18,'resposta 5',0),
	
	(4,19,'resposta 1',0),
	(4,19,'resposta 2',1),
	(4,19,'resposta 3',0),
	(4,19,'resposta 4',0),
	(4,19,'resposta 5',0),
	
	(4,20,'resposta 1',0),
	(4,20,'resposta 2',1),
	(4,20,'resposta 3',0),
	(4,20,'resposta 4',0),
	(4,20,'resposta 5',0),

	(4,21,'resposta 1',0),
	(4,21,'resposta 2',1),
	(4,21,'resposta 3',0),
	(4,21,'resposta 4',0),
	(4,21,'resposta 5',0),
	
	(5,22,'resposta 1',0),
	(5,22,'resposta 2',1),
	(5,22,'resposta 3',0),
	(5,22,'resposta 4',0),
	(5,22,'resposta 5',0),
	
	(5,23,'resposta 1',0),
	(5,23,'resposta 2',1),
	(5,23,'resposta 3',0),
	(5,23,'resposta 4',0),
	(5,23,'resposta 5',0),
	
	(5,24,'resposta 1',0),
	(5,24,'resposta 2',1),
	(5,24,'resposta 3',0),
	(5,24,'resposta 4',0),
	(5,24,'resposta 5',0),
	
	(5,25,'resposta 1',0),
	(5,25,'resposta 2',1),
	(5,25,'resposta 3',0),
	(5,25,'resposta 4',0),
	(5,25,'resposta 5',0),
	
	(5,26,'resposta 1',0),
	(5,26,'resposta 2',1),
	(5,26,'resposta 3',0),
	(5,26,'resposta 4',0),
	(5,26,'resposta 5',0),
	
	(6,27,'resposta 1',0),
	(6,27,'resposta 2',1),
	(6,27,'resposta 3',0),
	(6,27,'resposta 4',0),
	(6,27,'resposta 5',0),
	
	(6,28,'resposta 1',0),
	(6,28,'resposta 2',1),
	(6,28,'resposta 3',0),
	(6,28,'resposta 4',0),
	(6,28,'resposta 5',0),
	
	(6,29,'resposta 1',0),
	(6,29,'resposta 2',1),
	(6,29,'resposta 3',0),
	(6,29,'resposta 4',0),
	(6,29,'resposta 5',0),
	
	(6,30,'resposta 1',0),
	(6,30,'resposta 2',1),
	(6,30,'resposta 3',0),
	(6,30,'resposta 4',0),
	(6,30,'resposta 5',0),
	
	(6,31,'resposta 1',0),
	(6,31,'resposta 2',1),
	(6,31,'resposta 3',0),
	(6,31,'resposta 4',0),
	(6,31,'resposta 5',0),
	
	(7,32,'resposta 1',0),
	(7,32,'resposta 2',1),
	(7,32,'resposta 3',0),
	(7,32,'resposta 4',0),
	(7,32,'resposta 5',0),
	
	(7,33,'resposta 1',0),
	(7,33,'resposta 2',1),
	(7,33,'resposta 3',0),
	(7,33,'resposta 4',0),
	(7,33,'resposta 5',0),
	
	(7,34,'resposta 1',0),
	(7,34,'resposta 2',1),
	(7,34,'resposta 3',0),
	(7,34,'resposta 4',0),
	(7,34,'resposta 5',0),
	
	(7,35,'resposta 1',0),
	(7,35,'resposta 2',1),
	(7,35,'resposta 3',0),
	(7,35,'resposta 4',0),
	(7,35,'resposta 5',0);
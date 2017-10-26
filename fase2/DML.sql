-- Inserindo Desenvolvedores
INSERT INTO DESENVOLVEDOR VALUES ('Ronaldo Ailill', 'ronaldo@gmail.com', 'pass1234');
INSERT INTO DESENVOLVEDOR VALUES ('Logan Pantheras', 'logan@gmail.com', 'pass1234');
INSERT INTO DESENVOLVEDOR VALUES ('Michael Bay', 'michael@gmail.com', 'pass1234');
INSERT INTO DESENVOLVEDOR VALUES ('Charles White', 'white@gmail.com', 'pass1234');
INSERT INTO DESENVOLVEDOR VALUES ('William Green', 'green@gmail.com', 'pass1234');

-- Inserindo Projetos
INSERT INTO PROJETO VALUES (1, 'Gerenciador de Projetos', '2017-08-02', 'EM DESENVOLVIMENTO', 'ronaldo@gmail.com');
INSERT INTO PROJETO VALUES (2, 'API para cidades inteligentes', '2016-06-02', 'EM DESENVOLVIMENTO', 'michael@gmail.com');
INSERT INTO PROJETO VALUES (3, 'Aplicativo para métodos ageis', '2015-08-12', 'COMPLETO', 'green@gmail.com');

-- Inserindo cronogramas de projetos
INSERT INTO CRONOGRAMA VALUES (1);
INSERT INTO CRONOGRAMA VALUES (2);
INSERT INTO CRONOGRAMA VALUES (3);

-- INserindo forum de projetos
INSERT INTO FORUM VALUES (1);
INSERT INTO FORUM VALUES (2);
INSERT INTO FORUM VALUES (3);

-- Inserindo Atividades de projetos
INSERT INTO ATIVIDADE VALUES (1, 'Levantamento de requisitos', '2017-08-02', '2017-08-10','COMPLETO', 'Levantar os requisitos necessários do projeto', 1);
INSERT INTO ATIVIDADE VALUES (2, 'Modelagem conceitual', '2017-08-05', '2017-12-15','EM DESENVOLVIMENTO', 'Modelar o projeto usando o modelo ER-X', 1);
INSERT INTO ATIVIDADE VALUES (3, 'Definição da linguagem a ser utilizada', '2017-09-18', '2017-11-01', 'NÃO INICIADO', NULL, 1);
INSERT INTO ATIVIDADE VALUES (4, 'Refatoração do código', '2017-07-10', '2017-12-01', 'EM DESENVOLVIMENTO', NULL, 2);
INSERT INTO ATIVIDADE VALUES (5, 'Otimização de consultas', '2017-07-12', '2017-12-01', 'EM DESENVOLVIMENTO', NULL, 2);

-- Inserindo execuções de atividades de projetos
INSERT INTO EXECUTA VALUES ('michael@gmail.com', 2);
INSERT INTO EXECUTA VALUES ('white@gmail.com', 2);
INSERT INTO EXECUTA VALUES ('logan@gmail.com', 4);
INSERT INTO EXECUTA VALUES ('green@gmail.com', 5);

-- Inserindo participação de atividades de projetos
INSERT INTO PARTICIPA VALUES ('green@gmail.com', 1);
INSERT INTO PARTICIPA VALUES ('michael@gmail.com', 1);
INSERT INTO PARTICIPA VALUES ('ronaldo@gmail.com', 1);
INSERT INTO PARTICIPA VALUES ('michael@gmail.com', 2);
INSERT INTO PARTICIPA VALUES ('white@gmail.com', 2);
INSERT INTO PARTICIPA VALUES ('logan@gmail.com', 2);
INSERT INTO PARTICIPA VALUES ('green@gmail.com', 2);
INSERT INTO PARTICIPA VALUES ('green@gmail.com', 3);

-- Inserindo tópicos de fórum
INSERT INTO TOPICO VALUES (1, '2017-08-02', 'Precisamos definir os requisitos de dados', 1, 'ronaldo@gmail.com');
INSERT INTO TOPICO VALUES (2, '2017-08-10', 'A modelagem UML não seria melhor para o modelo conceitual?', 1, 'ronaldo@gmail.com');
INSERT INTO TOPICO VALUES (3, '2017-10-20', 'Precisamos da refatoração de código urgente!', 2, 'logan@gmail.com');

-- Inserindo mensagem de tópicos
INSERT INTO MENSAGEM VALUES (1, '2017-08-02', 'Estou trabalhando nisso, alguém mais pode me ajudar?', 1, 'michael@gmail.com');
INSERT INTO MENSAGEM VALUES (2, '2017-08-11', 'Talvez, podemos discutir?', 2, 'michael@gmail.com');
INSERT INTO MENSAGEM VALUES (3, '2017-08-21', 'Eu acho que não', 2, 'green@gmail.com');

-- Algumas consultas
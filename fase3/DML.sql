-- Inserindo Desenvolvedores
INSERT INTO gerenciadorapp_desenvolvedor VALUES ('Ronaldo Ailill', 'ronaldo@gmail.com', 'pass1234');
INSERT INTO gerenciadorapp_desenvolvedor VALUES ('Logan Pantheras', 'logan@gmail.com', 'pass1234');
INSERT INTO gerenciadorapp_desenvolvedor VALUES ('Michael Bay', 'michael@gmail.com', 'pass1234');
INSERT INTO gerenciadorapp_desenvolvedor VALUES ('Charles White', 'white@gmail.com', 'pass1234');
INSERT INTO gerenciadorapp_desenvolvedor VALUES ('William Green', 'green@gmail.com', 'pass1234');

-- Inserindo Projetos
INSERT INTO gerenciadorapp_projeto VALUES (1, 'Gerenciador de Projetos', '2017-08-02', 'EM DESENVOLVIMENTO', '', 'ronaldo@gmail.com');
INSERT INTO gerenciadorapp_projeto VALUES (2, 'API para cidades inteligentes', '2016-06-02', 'EM DESENVOLVIMENTO','',  'michael@gmail.com');
INSERT INTO gerenciadorapp_projeto VALUES (3, 'Aplicativo para métodos ageis', '2015-08-12', 'COMPLETO','',  'green@gmail.com');

-- INserindo forum de projetos
INSERT INTO gerenciadorapp_forum VALUES (1);
INSERT INTO gerenciadorapp_forum VALUES (2);
INSERT INTO gerenciadorapp_forum VALUES (3);

-- Inserindo Atividades de projetos
INSERT INTO gerenciadorapp_atividade VALUES (1, 'Levantamento de requisitos', 'Levantar os requisitos necessários do projeto.', '2017-08-02', '2017-10-10', 'CONCLUIDA', 'ronaldo@gmail.com', 1);
INSERT INTO gerenciadorapp_atividade VALUES (2, 'Modelagem conceitual', 'Modelar o projeto usando o modelo ER-X.', '2017-08-05', '2017-12-15', 'EM PROGRESSO', 'ronaldo@gmail.com', 1);
INSERT INTO gerenciadorapp_atividade VALUES (3, 'Definição da linguagem a ser utilizada', 'Definir a linguagem utilizada para o back-end da nossa aplicação.', '2017-09-18', '2017-11-01', 'EM PROGRESSO', 'ronaldo@gmail.com', 1);
INSERT INTO gerenciadorapp_atividade VALUES (4, 'Refatoração do código', 'Melhorar o design do código sem adicionar nenhuma feature.', '2017-07-10', '2017-12-01', 'CONCLUIDA', 'michael@gmail.com', 2);
INSERT INTO gerenciadorapp_atividade VALUES (5, 'Otimização de consultas', 'Otimizar as consultas do banco de dados para melhorar o desempenho.', '2017-07-12', '2017-12-01', 'EM PROGRESSO', 'michael@gmail.com', 2);
INSERT INTO gerenciadorapp_atividade VALUES (6, 'Desenvolver o design do app', 'Esboçar o design que será utilizado no aplicativo.', '2016-04-02', '2016-08-01', 'CONCLUIDA', 'green@gmail.com', 2);

-- Inserindo execuções de atividades de projetos
INSERT INTO gerenciadorapp_executa VALUES (1, 2, 'michael@gmail.com');
INSERT INTO gerenciadorapp_executa VALUES (2, 2, 'white@gmail.com');
INSERT INTO gerenciadorapp_executa VALUES (3, 4, 'logan@gmail.com');
INSERT INTO gerenciadorapp_executa VALUES (4, 5, 'green@gmail.com');

-- Inserindo projetos já finalizados
INSERT INTO gerenciadorapp_finaliza VALUES (1, '2016-05-01', 2, 'michael@gmail.com');

-- Inserindo participação de atividades de projetos
INSERT INTO gerenciadorapp_participa VALUES (1, 'green@gmail.com', 1);
INSERT INTO gerenciadorapp_participa VALUES (2, 'michael@gmail.com', 1);
INSERT INTO gerenciadorapp_participa VALUES (3, 'ronaldo@gmail.com', 1);
INSERT INTO gerenciadorapp_participa VALUES (4, 'michael@gmail.com', 2);
INSERT INTO gerenciadorapp_participa VALUES (5, 'white@gmail.com', 2);
INSERT INTO gerenciadorapp_participa VALUES (6, 'logan@gmail.com', 2);
INSERT INTO gerenciadorapp_participa VALUES (7, 'green@gmail.com', 2);
INSERT INTO gerenciadorapp_participa VALUES (8, 'green@gmail.com', 3);

-- Inserindo tópicos de fórum
INSERT INTO gerenciadorapp_topico VALUES (1, '2017-08-02', 'Precisamos definir os requisitos de dados', 'ronaldo@gmail.com', 1);
INSERT INTO gerenciadorapp_topico VALUES (2, '2017-08-10', 'A modelagem UML não seria melhor para o modelo conceitual?', 'ronaldo@gmail.com', 1);
INSERT INTO gerenciadorapp_topico VALUES (3, '2017-10-20', 'Precisamos da refatoração de código urgente!', 'logan@gmail.com', 2);

-- Inserindo mensagem de tópicos
INSERT INTO gerenciadorapp_mensagem VALUES (1, '2017-08-02', 'Estou trabalhando nisso, alguém mais pode me ajudar?', 'michael@gmail.com', 1);
INSERT INTO gerenciadorapp_mensagem VALUES (2, '2017-08-11', 'Talvez, podemos discutir?', 'michael@gmail.com', 2);
INSERT INTO gerenciadorapp_mensagem VALUES (3, '2017-08-21', 'Eu acho que não', 'green@gmail.com', 2);

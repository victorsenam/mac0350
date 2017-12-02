-- Algumas consultas
SELECT * FROM gerenciadorapp_atividade WHERE pid_id=1;

SELECT gerenciadorapp_desenvolvedor.nome AS nome_desenvolvedor, gerenciadorapp_atividade.nome AS nome_atividade
    FROM gerenciadorapp_desenvolvedor, gerenciadorapp_finaliza, gerenciadorapp_atividade 
    WHERE email=devmail_id AND gerenciadorapp_atividade.id=ativid_id;

SELECT gerenciadorapp_projeto.nome 
    FROM gerenciadorapp_projeto, gerenciadorapp_forum, gerenciadorapp_topico, gerenciadorapp_mensagem, gerenciadorapp_desenvolvedor 
    WHERE gerenciadorapp_projeto.id=pid_id AND gerenciadorapp_forum.pid_id=forid_id AND gerenciadorapp_topico.ID=topid_id AND gerenciadorapp_mensagem.autemail_id='green@gmail.com'
    GROUP BY gerenciadorapp_projeto.nome;
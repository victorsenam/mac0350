# Pré requisitos
Pra dar aquela facilitada pra quem for mexer no projeto vou explicar uns rolê aqui. Primeiro de tudo, tem q setupar as paradas. O que você precisa instalar? python, gcc, postgresql, pip, psycopg e django. Todos menos o django estão explicados no começo do pdf q o Luquita passou. O postgres pode variar de distribuição, tem q pesquisar mas é coxa. Configurar é meio q mais treta, vou explicar em baixo. O django instala pelo pip `pip install django`.  

Você precisa configurar o postgres de acordo com o arquivo `settings.py` q tá dentro da pasta `gerenciador/gerenciador`. Isso quer dizer que não precisa mudar a senha do usuário postgres do db. Você pode (talvez precise) mudar a senha do usuário postgres do seu OS (usando `passwd postgres`) pra poder fazer as parada, mas o usuário postgres dentro do postgresql é pra ficar com senha vazia mesmo. A gente só precisa criar o db mac0350. Entra no usuário postgres (`sudo -u postgres -i`), entra na interface do sql (`psql`) e cria o db (`createdb mac0350`). Feito isso, GG.

# Onde estão as coisas?
Tudo está dentro da pasta `gerenciador`. O arquivo principal do django é o `manage.py`. Tem uma pasta `gerenciadorapp`. Dentro dela tem o arquivo `models.py` que descreve os db e vários outros arquvios do app. O `admin.py` é o controller que gerencia a página de administração do db, a página q a gente tá criando. Quando você mudar algo no db, vc tem que mudar tanto na `models.py`, pra mudar o db, quanto na `admin.py` pra criar a interface gráfica que é o objetivo dessa porra toda.

# Rodando o servidor
Roda um `python manage.py runserver` e GG, seu app está em `localhost:8000/admin`. Da primeira vez que rodar você deve querer criar um usuário de administração. Pra isso, roda um `python manage.py createsuperuser`.

# Migrando o db
Sempre que você mudar o db vc tem que migrar ele. É só rodar um `python manage.py makemigrations` e um `python manage.py migrate`.

# OBS
Talvez você queira fuçar no db na mão. O pdf do Lucas explica bem como faz isso. Pra entrar no db certo, vai pro usuario postgres e roda `psql mac0350`.  

A coluna id é automática quando não tem chave primária.

# O que eu tenho que fazer?
Criar os models da análise de requisitos. Precisa colocar eles no `models.py` e registar eles no `admin.py`.

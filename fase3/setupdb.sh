echo "Criando BD..."

psql -U postgres -c "CREATE DATABASE mac0350"

echo "Rodando migrations..."

python gerenciador/manage.py makemigrations gerenciadorapp
python gerenciador/manage.py migrate

echo "Rodando seed..."

psql -U postgres mac0350 -f DML.sql

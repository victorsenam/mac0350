from django.db import models

# Create your models here.

class Desenvolvedor(models.Model):
    nome = models.CharField(max_length=50)
    email = models.CharField(max_length=30,primary_key=True)
    senha = models.CharField(max_length=30)

class Projeto(models.Model):
	ESTADOS = (
		('C','COMPLETO'),
		('D','EM DESENVOLVIMENTO'),
		('N','NÃO INICIADO'),
	)

	nome = models.CharField(max_length=30)
	datacriacao = models.DateField(auto_now_add=True)
	estado = models.TextField(max_length=1,choices=ESTADOS)
	descricao = models.TextField()
	admemail = models.ForeignKey(Desenvolvedor,on_delete=models.PROTECT)

class Atividade(models.Model):
	ESTADOS = (
		('C','CONCLUIDA'),
		('P','EM PROGRESSO'),
	)

	nome = models.CharField(max_length=100)
	descricao = models.TextField()
	inicio = models.DateField()
	datalimite = models.DateField()
	estado = models.TextField(max_length=1,choices=ESTADOS)
	donoemail = models.ForeignKey(Desenvolvedor,on_delete=models.CASCADE)
	pid = models.ForeignKey(Projeto,on_delete=models.CASCADE)

class Forum(models.Model):
	pid = models.ForeignKey(Projeto,on_delete=models.CASCADE,primary_key=True)

class Topico(models.Model):
	datacriacao = models.DateField(auto_now_add=True)
	titulo = models.CharField(max_length=100)
	forid = models.ForeignKey(Forum,on_delete=models.CASCADE)
	autemail = models.ForeignKey(Desenvolvedor,on_delete=models.CASCADE)

class Mensagem(models.Model):
	datacriacao = models.DateField(auto_now_add=True)
	titulo = models.CharField(max_length=100)
	autemail = models.ForeignKey(Desenvolvedor,on_delete=models.CASCADE)
	topid = models.ForeignKey(Topico,on_delete=models.CASCADE)

class Executa(models.Model):
	devmail = models.ForeignKey(Desenvolvedor,on_delete=models.CASCADE)
	ativid = models.ForeignKey(Atividade,on_delete=models.CASCADE)

class Finaliza(models.Model):
	devmail = models.ForeignKey(Desenvolvedor,on_delete=models.CASCADE)
	ativid = models.ForeignKey(Atividade,on_delete=models.CASCADE)
	datadeentrega  = models.DateField()

class Participa(models.Model):
	devmail = models.ForeignKey(Desenvolvedor,on_delete=models.CASCADE)
	pid = models.ForeignKey(Projeto,on_delete=models.CASCADE)

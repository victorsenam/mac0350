from django.db import models

# Create your models here.

class Desenvolvedor(models.Model):
    nome = models.CharField(max_length=50, null=False)
    email = models.CharField(max_length=30, null=False, primary_key=True)
    senha = models.CharField(max_length=30, null=False)

# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-29 02:06
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('gerenciadorapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Atividade',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=100)),
                ('descricao', models.TextField()),
                ('inicio', models.DateField()),
                ('datalimite', models.DateField()),
                ('estado', models.TextField(choices=[('C', 'CONCLUIDA'), ('P', 'EM PROGRESSO')], max_length=1)),
                ('donoemail', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Desenvolvedor')),
            ],
        ),
        migrations.CreateModel(
            name='Executa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ativid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Atividade')),
                ('devmail', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Desenvolvedor')),
            ],
        ),
        migrations.CreateModel(
            name='Finaliza',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('datadeentrega', models.DateField()),
                ('ativid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Atividade')),
                ('devmail', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Desenvolvedor')),
            ],
        ),
        migrations.CreateModel(
            name='Mensagem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('datacriacao', models.DateField(auto_now_add=True)),
                ('titulo', models.CharField(max_length=100)),
                ('autemail', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Desenvolvedor')),
            ],
        ),
        migrations.CreateModel(
            name='Participa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('devmail', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Desenvolvedor')),
            ],
        ),
        migrations.CreateModel(
            name='Projeto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=30)),
                ('datacriacao', models.DateField(auto_now_add=True)),
                ('estado', models.TextField(choices=[('C', 'COMPLETO'), ('D', 'EM DESENVOLVIMENTO'), ('N', 'NÃO INICIADO')], max_length=1)),
                ('descricao', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Topico',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('datacriacao', models.DateField(auto_now_add=True)),
                ('titulo', models.CharField(max_length=100)),
                ('autemail', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Desenvolvedor')),
            ],
        ),
        migrations.CreateModel(
            name='Forum',
            fields=[
                ('pid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='gerenciadorapp.Projeto')),
            ],
        ),
        migrations.AddField(
            model_name='projeto',
            name='admemail',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='gerenciadorapp.Desenvolvedor'),
        ),
        migrations.AddField(
            model_name='participa',
            name='pid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Projeto'),
        ),
        migrations.AddField(
            model_name='mensagem',
            name='topid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Topico'),
        ),
        migrations.AddField(
            model_name='atividade',
            name='pid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Projeto'),
        ),
        migrations.AddField(
            model_name='topico',
            name='forid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gerenciadorapp.Forum'),
        ),
    ]
from django.contrib import admin
from .models import Desenvolvedor
from .models import Projeto
from .models import Atividade
from .models import Topico
from .models import Mensagem
from .models import Forum
from .models import Executa
from .models import Finaliza
from .models import Participa

# Register your models here.

admin.site.register(Desenvolvedor)
admin.site.register(Projeto)
admin.site.register(Atividade)
admin.site.register(Topico)
admin.site.register(Mensagem)
admin.site.register(Forum)
admin.site.register(Executa)
admin.site.register(Finaliza)
admin.site.register(Participa)

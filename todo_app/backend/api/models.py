from django.db import models

# Create your models here.
class Task(models.Model):
    titre = models.CharField(max_length=500)
    contenu = models.TextField()
    done = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.titre

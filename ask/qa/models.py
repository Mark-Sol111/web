
import datetime
from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone

class Question(models.Model):
    title = models.CharField(max_length=255)
    text = models.TextField()
    added_at = models.DateField()
    rating = models.IntegerField(default=0)
    author = models.ForeignKey(User,related_name='q_author_user',on_delete=models.CASCADE)
    likes = models.ManyToManyField(User, related_name='q_likes_users')
    # objects = QuestionManager()

    def __str__(self):
        return self.title

    def was_published_recently(self):
        return self.added_at >= timezone.now() - datetime.timedelta(days=1)

    def get_abdolute_url(self):
        return '/question/%d/' % self.pk


    class Meta():
        db_table = 'question'
        ordering = ['-added_at']


class QuestionManager(models.Manager):
    def new(self):
        return Question.objects.order_by('added_at')

    def popular(self):
        return Question.objects.order_by('rating')


class Answer(models.Model):
    text = models.TextField()
    added_at = models.DateField()
    questtion = models.ForeignKey(Question)
    author = models.ForeignKey(User)

    def __str__(self):
        return self.text

    def get_absolute_url(self):
        return '/quesiton/%d' % self.pk


    class Meta():
        db_table = 'answer'
        ordering = ['-added_at']

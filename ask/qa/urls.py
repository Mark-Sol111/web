# qa/urls.py
from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.test, name='qa_index'),
    # ex: /polls/5/
    url(r'^[0-9]+/', views.test, name='qa_detail'),
]

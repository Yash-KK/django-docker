from django.urls import path
from .views import (
  index,
  hello_world
)
urlpatterns = [
    path("", index, name='index'),
    path("hello-world", hello_world, name='hello-world')
]

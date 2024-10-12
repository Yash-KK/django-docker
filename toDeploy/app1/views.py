from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.

def index(request):
  name = None
  if request.method == 'POST':
    name = request.POST.get('name')

  return render(request, 'app1/index.html', {
    "name":name
  })

def hello_world(request):
  return HttpResponse("Hello World")

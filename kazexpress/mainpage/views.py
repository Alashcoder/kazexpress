from django.shortcuts import render
from django.http import HttpResponse
from django.template.context import RequestContext
from .models import Product
def index(request):
#    context_instance=RequestContext(request)
    return render(request,"main.html",{'product':product})
product=Product.objects.all()
def prod(request):
    return render(request,"product_page.html",{'product':product})
# Create your views here.

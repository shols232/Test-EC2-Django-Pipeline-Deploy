from rest_framework.views import APIView
from django.shortcuts import render
from rest_framework.response import Response


class HelloWorld(APIView):

    def get(self, request, *args, **kwargs):

        return render(request, 'hello.html')
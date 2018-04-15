# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import HttpResponse
from django.conf import settings

def index(request):
    db = settings.DATABASES['default']
    redis = settings.CACHES['default']
    return HttpResponse("""
This is working.

DB host: """ + db['HOST'] +"""
DB port: """ + str(db['PORT']) +"""
DB user: """ + db['USER'] +"""
DB name: """ + db['NAME'] +"""

Redis URL: """+redis['LOCATION']+"""
    """)

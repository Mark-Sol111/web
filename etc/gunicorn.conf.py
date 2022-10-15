bind = ['0.0.0.0:8000']
workers = 4
chdir = '/home/box/web/ask'
accesslog = '/home/box/web/access-dj.log'
errorlog='/home/box/web/error-dj.log'
loglevel='debug'
daemon=True
wsgi_app='ask.wsgi'

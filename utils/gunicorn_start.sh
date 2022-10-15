#!/bin/bash

cd /home/box/web/ask
gunicorn -c /home/box/web/etc/gunicorn.conf.py ask.wsgi

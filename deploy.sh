#!/bin/sh
sudo git pull origin master
sudo pip3 install -r requirements.txt
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic
sudo systemctl restart nginx
sudo systemctl restart gunicorn
sudo /home/ubuntu/venv/bin/gunicorn --workers 3 --bind 0:8000 ec2_cloudfromation_test.wsgi:application
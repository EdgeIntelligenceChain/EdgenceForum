nohup celery -A celery_worker.celery --loglevel=info worker 2>&1 &
nohup gunicorn -w 2 -b 127.0.0.1:5000 wsgi:flaskbb --log-file logs/gunicorn.log --pid gunicorn.pid 2>&1 -reload &

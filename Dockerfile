FROM python

WORKDIR /app

RUN pip install Django

COPY . .

RUN python manage.py makemigrations

CMD ["python","manage.py","runserver","0.0.0.0:8000" ]

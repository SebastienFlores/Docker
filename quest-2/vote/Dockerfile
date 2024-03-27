FROM debian:12

RUN apt-get update -yq

RUN apt install -y python3 python3-pip

EXPOSE 5000

COPY vote /app/

WORKDIR /app

RUN pip install virtualenv --break-system-packages

RUN virtualenv .venv

RUN . .venv/bin/activate

RUN pip install -r requirements.txt --break-system-packages

RUN pip install gunicorn --break-system-packages

#CMD ["gunicorn", "app:app", "-w", "2", "-b", "0.0.0.0:80", "--log-file=-", "--access-logfile=-", "--keep-alive=0"]

CMD ["python3", "app.py"]
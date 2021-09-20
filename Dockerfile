FROM python:stretch

COPY . /cd0157-Server-Deployment-and-Containerization
WORKDIR /cd0157-Server-Deployment-and-Containerization

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
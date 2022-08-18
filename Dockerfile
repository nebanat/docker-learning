FROM python:3.8-slim

RUN apt-get -y update

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

# FROM example/nanoer
# ADD notes.txt /notes.txt
# CMD ["/bin/nano", "/notes.txt"]

# FROM debian:sid
# RUN apt-get -y update
# RUN apt-get -y install nano
# CMD ["/bin/nano", "/tmp/notes"]


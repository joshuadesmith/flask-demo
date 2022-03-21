

FROM python:3.10-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "/python-docker/app.py" ]
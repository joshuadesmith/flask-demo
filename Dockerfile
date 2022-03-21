FROM python:3.10-slim

RUN pip install flask

WORKDIR /app
COPY app.py /app/app.py

ENTRYPOINT [ "python" ]
CMD [ "/app/app.py" ]
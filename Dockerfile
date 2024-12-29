
FROM python:3.13.1

WORKDIR /code

EXPOSE 80

COPY ./requirements.txt /code/requirements.txt


RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt


COPY ./main.py /code/main.py


CMD ["fastapi", "run", "main.py", "--port", "80"]
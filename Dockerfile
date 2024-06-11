FROM python:3.9-alpine

WORKDIR /app

COPY ./requirements.txt .

RUN pip install --no-cache-dir -r ./requirements.txt

COPY . .

ENTRYPOINT [ "fastapi", "run", "main.py", "--port", "3000" ]
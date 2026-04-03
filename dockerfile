FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src ./src  # вот эта строка добавляет папку src в контейнер
COPY main.py ./  # и остальные файлы приложения

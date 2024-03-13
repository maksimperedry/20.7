FROM python:3.9-alpine
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
COPY . .
RUN pip install --upgrade pip && pip install -r requirements.txt
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


# В данной версии не предусмотрено сохранять изменения в базе данных,
# После перезапуска контейнера, база верется в исходное состояние.

FROM python:3.13-slim

WORKDIR /app

COPY . .

EXPOSE 80

RUN pip install --no-cache-dir -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:80", "app:app"]
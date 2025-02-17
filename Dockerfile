FROM python:3.13-slim
WORKDIR /app
COPY . .
RUN pip intall flask gunicorn
CMD gunicorn -b 0.0.0.0 app:app
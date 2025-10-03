FROM python:3.11-slim

# Variables de entorno
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Crear directorio de trabajo
WORKDIR /app

# Copiar requirements e instalar dependencias
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copiar el resto del código
COPY ./app ./app

# Exponer el puerto
EXPOSE 8000

# Comando para lanzar la app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--reload"]
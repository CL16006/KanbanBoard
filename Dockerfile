# Usa imagen oficial de Python
FROM python:3.11

# Establece el directorio de trabajo
WORKDIR /code

# Copia los archivos necesarios
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código
COPY . .

# Expone el puerto 8000
EXPOSE 8000

# Comando por defecto (puedes cambiarlo por gunicorn en producción)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

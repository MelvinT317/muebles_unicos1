# Usar una imagen base de Python
FROM python:3.8-slim

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar los archivos de la aplicación al contenedor
COPY . .

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt
#RUN pip install flask

RUN pip install werkzeug
RUN pip install --upgrade Flask Werkzeug

# Exponer el puerto en el que se ejecutará la aplicación Flask
EXPOSE 8081

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]










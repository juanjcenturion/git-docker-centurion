# Usa una imagen base de Python
FROM python:3.8

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . .

# Instala las dependencias
RUN pip install -r requirements.txt

# Expón el puerto en el que la aplicación Flask escucha
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]
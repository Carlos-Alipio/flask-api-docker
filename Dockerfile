# Usar uma imagem base oficial do Python
FROM python:3.9-slim

# Configurar o diretório de trabalho
WORKDIR /app

# Copiar os arquivos do projeto
COPY . /app

# Instalar as dependências
RUN pip install Flask

# Expor a porta 5000
EXPOSE 5001

# Comando para iniciar a API
CMD ["python", "app.py"]

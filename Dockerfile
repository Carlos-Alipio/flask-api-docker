# Usar uma imagem base com Python
FROM python:3.9-slim

# Definir diretório de trabalho
WORKDIR /app

# Copiar o arquivo requirements.txt (iremos criá-lo) e a aplicação
# Mas primeiro precisamos criar o requirements.txt
COPY requirements.txt ./

# Instalar dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o restante do código
COPY . .

# Expor a porta do Flask
EXPOSE 5000

# Comando padrão para rodar a aplicação
CMD ["python", "app.py"]

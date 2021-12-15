FROM python:3.9
# não gerar arquivos .pyc
ENV PYTHONDONTWRITEBYTECODE 1
# não permite armazenar msm de log em buffer
ENV PYTHONUNBUFFERED 1

WORKDIR /code

RUN python -m pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
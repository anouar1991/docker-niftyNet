FROM python:3.6
USER root
ADD requirements.txt ./requirements.txt
RUN pip install -U  --no-cache-dir -r requirements.txt

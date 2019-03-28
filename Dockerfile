FROM python:3.6
USER root
COPY ./requirements.txt ./requirements.txt
RUN pip install -U  -r requirements.txt
RUN apt update -y && apt install -y megatools graphviz
RUN apt-get clean && apt-get autoremove --purge
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash", ""]

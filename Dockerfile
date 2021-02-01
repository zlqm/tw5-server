FROM python:3.8-slim

RUN apt-get update  && \
    apt-get --assume-yes --no-install-recommends install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.cache/pip

RUN pip3 install gunicorn tw5-server && \
    rm -rf /root/.cache/pip

ENTRYPOINT ["gunicorn", "tw5_server.app:app", "--bind", "0.0.0.0:80"]

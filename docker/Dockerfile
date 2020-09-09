FROM python:3.8-slim

RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list && \
    apt-get update  && \
    apt-get --assume-yes --no-install-recommends install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install tw5-server


ENV TW5_SERVER_CONFIG=/app/server.yaml FLASK_APP=tw5_server.flask_server
ENTRYPOINT ["flask", "run", "--no-debugger", "-h", "0.0.0.0", "-p", "8000"]

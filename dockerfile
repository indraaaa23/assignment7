FROM ubuntu:latest

RUN mkdir -p /structure && \
    chmod 777 /structure && \
    touch /structure/sync-work && \
    chown sync /structure/sync-work && \
    touch /structure/nobody-work && \
    chown nobody /structure/nobody-work && \
    useradd -u 5000 collin

CMD ["sh", "-c", "while true; do echo users; done"]


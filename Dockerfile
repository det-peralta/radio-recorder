FROM jrottenberg/ffmpeg:5.0-alpine

RUN mkdir /output

COPY crontab /etc/crontabs/root

ENTRYPOINT [ "crond" ]

CMD ["-f", "-d", "8"]

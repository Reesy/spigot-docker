FROM adoptopenjdk:latest

RUN mkdir minecraft

COPY ./scripts ./scripts

WORKDIR /minecraft

CMD ["sh", "../scripts/start.sh"]
FROM debian:6

COPY response.varfile /response.varfile
COPY mysql-connector-java-5.1.35-bin.jar /mysql-connector-java-5.1.35-bin.jar

COPY ./assets /assets
RUN chmod -R +x /assets/*

EXPOSE 8090

CMD ["/assets/run.sh"]

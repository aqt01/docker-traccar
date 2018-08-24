# Source: https://hub.docker.com/r/traccar/traccar/~/dockerfile/
FROM traccar/traccar 

MAINTAINER Maxim Zalysin <zalysin.m@gmail.com>

EXPOSE 8082

CMD ["-Djava.net.preferIPv4Stack=true", "-Xms512m", "-jar", "tracker-server.jar", "conf/traccar.xml"]

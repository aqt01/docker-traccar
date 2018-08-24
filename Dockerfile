# Source: https://hub.docker.com/r/traccar/traccar/~/dockerfile/
FROM traccar/traccar 

MAINTAINER Maxim Zalysin <zalysin.m@gmail.com>

COPY ./conf/web/simple/index.html /opt/traccar/web/simple/index.html 
COPY ./conf/web/release.html /opt/traccar/web/release.html
COPY ./conf/web/app/view/dialog/Login.js /opt/traccar/web/app/view/dialog/Login.js
COPY ./conf/web/logo.svg /opt/traccar/web/logo.svg
COPY ./conf/web/logo.png /opt/traccar/web/logo.png
COPY . .

EXPOSE 8082

CMD ["-Djava.net.preferIPv4Stack=true", "-Xms512m", "-jar", "tracker-server.jar", "conf/traccar.xml"]

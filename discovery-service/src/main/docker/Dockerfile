FROM openjdk:8-jdk-alpine
RUN  apk update && apk upgrade && apk add netcat-openbsd && apk add curl
VOLUME /tmp
RUN mkdir -p /tmp/discovery-service
ADD @project.build.finalName@.jar /tmp/discovery-service/
ADD run.sh run.sh
RUN chmod +x run.sh
CMD ./run.sh
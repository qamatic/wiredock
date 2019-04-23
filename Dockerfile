FROM openjdk:8-jre-alpine
MAINTAINER Senthil Maruthaiappan <senips@gmail.com>

#RUN addgroup -S appgroup && adduser -S wiredock -G appgroup

ENV VERSION 2.23.2

COPY entrypoint.sh /

RUN mkdir -p /home/wiredock \
  && wget https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-jre8-standalone/$VERSION/wiremock-jre8-standalone-$VERSION.jar \
    -O /home/wiredock/wiremock.jar 

WORKDIR /home/wiredock
VOLUME /home/wiredock
EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]

CMD java $JAVA_OPTS -jar wiremock.jar
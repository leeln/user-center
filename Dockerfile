FROM java:8-jre-alpine

ENV PROFILES dev
ENV VERSION 0.0.1-SNAPSHOT
ENV SERVER_NAME user-center
ENV PORT 8080
ENV CONFIG_SERVER_ENABLED false
ENV CONFIG_SERVER_URL http://config.leeln.com
ENV EUREKA_SERVER_ENABLED true
ENV EUREKA_SERVER_URL http://discovery.leeln.com/eureka/

ADD build/libs/${SERVER_NAME}-${VERSION}.jar /opt/app/app.jar


EXPOSE ${PORT}

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=${PROFILES}", "/opt/app/app.jar"]
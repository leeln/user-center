FROM leeln/java:jre-8

ENV PROFILES default
ENV VERSION 0.0.1-SNAPSHOT
ENV SERVER_NAME user-center
ENV PORT 8080
ENV CONFIG_SERVER_ENABLED false
ENV CONFIG_SERVER_URL http://config.leeln.com
ENV EUREKA_SERVER_ENABLED true
ENV EUREKA_SERVER_URL http://discovery.leeln.com/eureka/

COPY build/libs/*.jar /opt/app/app.jar

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=${PROFILES}", "/opt/app/app.jar"]
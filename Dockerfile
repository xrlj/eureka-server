#FROM xinxiamu/alpine-java:11
FROM lpicanco/java11-alpine:latest
VOLUME ["/tmp","/logs"]
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
#EXPOSE 1111
ENTRYPOINT ["java","-cp","app:app/lib/*","com.xrlj.eurekaserver.EurekaServerApplication"]

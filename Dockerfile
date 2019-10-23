FROM xinxiamu/alpine-java:11
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
VOLUME /tmp
VOLUME /app
ENTRYPOINT ["java","-cp","app:app/lib/*","com.xrlj.eurekaserver.EurekaServerApplication"]
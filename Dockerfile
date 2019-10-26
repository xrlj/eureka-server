FROM xinxiamu/alpine-java:11
VOLUME ["/app","/tmp","/logs"]
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
COPY start.sh /home
RUN set -ex && \
    chmod +x /home/start.sh
ENTRYPOINT ["/home/start.sh"]
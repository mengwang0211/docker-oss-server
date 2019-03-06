FROM anapsix/alpine-java:8_server-jre_unlimited
VOLUME /tmp
MAINTAINER wangmeng
ENV LANG C.UTF-8
COPY . /
RUN mv oss-server.jar app.jar
RUN jar -uvf app.jar BOOT-INF/classes/application.properties
EXPOSE 18000
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

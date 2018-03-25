FROM airhacks/java
MAINTAINER Guenter Platzer
ENV PAYARA_ARCHIVE payaramicro41
ENV INSTALL_DIR /opt
ENV ARCHIVE_NAME=app.war
RUN curl -o ${INSTALL_DIR}/${PAYARA_ARCHIVE}.jar -L "http://central.maven.org/maven2/fish/payara/extras/payara-micro/4.1.2.181/payara-micro-4.1.2.181.jar"
ENV PAYARA_HOME ${INSTALL_DIR}
ENV DEPLOYMENT_DIR ${PAYARA_HOME}
ENTRYPOINT java -jar ${PAYARA_ARCHIVE}.jar --deploy ${ARCHIVE_NAME}
WORKDIR ${INSTALL_DIR}
EXPOSE 8080 8181 5900

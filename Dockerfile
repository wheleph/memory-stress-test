FROM eclipse-temurin:17.0.2_8-jdk-centos7

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} /home/memory-stress/service.jar

ENTRYPOINT ["java", \
 "-Dcom.sun.management.jmxremote", \
 "-Dcom.sun.management.jmxremote.port=9010", \
 "-Dcom.sun.management.jmxremote.rmi.port=9010", \
 "-Djava.rmi.server.hostname=Z10325.local", \
 "-Dcom.sun.management.jmxremote.local.only=false", \
 "-Dcom.sun.management.jmxremote.authenticate=false", \
 "-Dcom.sun.management.jmxremote.ssl=false", \
 "-jar", \
 "/home/memory-stress/service.jar"]
FROM eclipse-temurin:17.0.2_8-jdk-centos7

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} /home/memory-stress/service.jar

ENTRYPOINT ["java", \
 "-jar", \
 "/home/memory-stress/service.jar"]
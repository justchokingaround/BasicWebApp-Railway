FROM eclipse-temurin:17-jdk-jammy

EXPOSE 8080
COPY /build/libs/*.jar ./server.jar
COPY start.sh start.sh
RUN chmod 770 start.sh
CMD ./start.sh

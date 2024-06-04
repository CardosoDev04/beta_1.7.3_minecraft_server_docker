FROM openjdk:17

WORKDIR /app

COPY server.jar server.jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565

ENTRYPOINT ["java", "-jar", "server.jar", "nogui"]


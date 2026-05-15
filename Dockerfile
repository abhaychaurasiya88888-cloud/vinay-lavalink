FROM eclipse-temurin:21-jre

WORKDIR /app

RUN apt-get update && apt-get install -y wget

RUN wget -O Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]

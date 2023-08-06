FROM openjdk:11-jre

RUN apt-get update && apt-get install -y curl python3

ARG MUSICBOT_VERSION

WORKDIR /

RUN echo "Building MusicBot version: $MUSICBOT_VERSION"

# Download and rename the JAR file based on the provided version
RUN curl -LJO "https://github.com/jagrosh/MusicBot/releases/download/$MUSICBOT_VERSION/JMusicBot-$MUSICBOT_VERSION.jar" \
    && mv "JMusicBot-$MUSICBOT_VERSION.jar" JMusicBot.jar

# Copy the config.txt file
COPY config.txt /config.txt

CMD ["java", "-Dnogui=true", "-jar", "/JMusicBot.jar"]
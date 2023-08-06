# Use OpenJDK JRE 11 as the base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /
# Install Curl
RUN LATEST_RELEASE=$(curl --silent "https://api.github.com/repos/jagrosh/MusicBot/releases/latest" | python3 -c "import sys, json; print(json.load(sys.stdin)['tag_name'])")

RUN echo "Latest release version: $LATEST_RELEASE"

# Download and rename the JAR file
RUN curl -LJO "https://github.com/jagrosh/MusicBot/releases/download/$LATEST_RELEASE/JMusicBot-$LATEST_RELEASE.jar" \
    && mv "JMusicBot-$LATEST_RELEASE.jar" JMusicBot.jar

COPY config.txt /config.txt

# Define the command to run the Java application with the specified options
CMD ["java", "-Dnogui=true", "-jar", "/JMusicBot.jar"]

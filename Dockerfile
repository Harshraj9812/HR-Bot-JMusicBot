# Use OpenJDK JRE 11 as the base image
FROM openjdk:11-jre

# Set the working directory inside the container
WORKDIR /

# Fetch the latest JMusicBot release JAR file
ARG latest_release=$(curl --silent "https://api.github.com/repos/jagrosh/MusicBot/releases/latest" | jq -r '.tag_name') 
RUN echo "Latest release version: $latest_release" 
RUN curl -LJO "https://github.com/jagrosh/MusicBot/releases/download/$latest_release/JMusicBot-$latest_release.jar" 
RUN mv JMusicBot-$latest_release.jar JMusicBot.jar
COPY config.txt /config.txt

# Define the command to run the Java application with the specified options
CMD ["java", "-Dnogui=true", "-jar", "/JMusicBot.jar"]

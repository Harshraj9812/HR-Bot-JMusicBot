# Use OpenJDK JRE 11 as the base image
FROM openjdk:11-jre

# Set the working directory inside the container
WORKDIR /

RUN mv JMusicBot-$latest_release.jar JMusicBot.jar
COPY config.txt /config.txt

# Define the command to run the Java application with the specified options
CMD ["java", "-Dnogui=true", "-jar", "/JMusicBot.jar"]

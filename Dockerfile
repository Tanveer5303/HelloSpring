# Use a base image with Java 17
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the host to the working directory in the container
COPY /Users/tanveer/.jenkins/workspace/CI_Pipeline/target/Hello-0.0.1-SNAPSHOT.jar app.jar

# Expose the port on which the application will run
EXPOSE 80

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

#FROM --platform=linux/x86-64/v8 openjdk:17
#VOLUME /tmp
#EXPOSE 80
#ARG JAR_FILE=target/Hello-0.0.1-SNAPSHOT.jar
#ADD ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]


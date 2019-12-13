# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="thiago.alessandro.farias@gmail.com"

# The application's jar file
ENV APP_FILE=spring-config-server.jar

# Application Directory
ENV APP_DIR=/tmp/app/

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Add the application's jar to the container
ADD target/${APP_FILE} ${APP_DIR}/${APP_FILE}

# Run the jar file
ENTRYPOINT java -jar ${APP_DIR}/${APP_FILE}

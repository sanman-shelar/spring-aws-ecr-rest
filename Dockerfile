# Start with a base image containing Java runtime
FROM adoptopenjdk/openjdk11:alpine-jre

# Add Maintainer Info
LABEL maintainer="Sanman Shelar"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/spring-aws-ecr-rest.jar

# Add the application's jar to the container
ADD ${JAR_FILE} spring-aws-ecr-rest.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-aws-ecr-rest.jar"]
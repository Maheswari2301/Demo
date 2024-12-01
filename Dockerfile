# Use an OpenJDK base image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR to the container
COPY target/helloworld-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]

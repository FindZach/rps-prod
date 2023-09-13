# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Create a directory to copy the JAR file into
WORKDIR /app

# Copy the JAR file from the repository into the container
COPY backend-0.0.1-SNAPSHOT.jar /app/backend-0.0.1-SNAPSHOT.jar

# Expose the port that your Spring Boot application listens on (if it's not 8080, replace it)
EXPOSE 8080

# Run the Spring Boot application when the container starts
CMD ["java", "-jar", "backend-0.0.1-SNAPSHOT.jar"]

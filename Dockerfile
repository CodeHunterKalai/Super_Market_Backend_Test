# Use a stable Java 17 base image
FROM eclipse-temurin:17-jdk

# Create /app inside container
WORKDIR /app

# Copy the compiled jar into the image
COPY target/*.jar app.jar

# Expose the Spring Boot port
EXPOSE 8080

# Run the Spring Boot JAR
ENTRYPOINT ["java","-jar","/app/app.jar"]

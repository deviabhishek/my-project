FROM openjdk:8-jre-alpine

EXPOSE 8080

# Copy the built JAR file to the container
COPY ./build/libs/*.jar /usr/app/my-app.jar

# Set the working directory
WORKDIR /usr/app

# Run the JAR file
ENTRYPOINT ["java", "-jar", "my-app.jar"]

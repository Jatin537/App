# Use Tomcat base image
FROM tomcat:9.0-jdk11-openjdk-slim

# Set working directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the container
COPY ./target/example-project-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/your-app.war

# Expose port 8080
EXPOSE 8080



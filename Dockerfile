# Use the official Tomcat image from the Docker Hub
FROM tomcat:9.0-jdk11-openjdk-slim

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the container
COPY ./your-app.war /usr/local/tomcat/webapps/your-app.war

# Expose the port Tomcat uses (usually 8080)
EXPOSE 8080

# Start Tomcat when the container is run
CMD ["catalina.sh", "run"]


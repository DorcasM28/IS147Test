# Use OpenJDK 23 image as the base image
FROM openjdk:24


LABEL authors="DorcasM28"


# Create a new app directory for my application files
RUN mkdir /app


# Copy the app files from host machine to the image filesystem
COPY out/production/IS147Test/ /app


# Set the directory for executing future commands
WORKDIR /app


# Set the entry point
ENTRYPOINT ["java", "HelloWorld"]


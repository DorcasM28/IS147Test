# Use OpenJDK 23 image as the base image
FROM openjdk:23
WORKDIR /app
COPY src/ /app/
RUN javac *.java
CMD ["java", "HelloWorld"]
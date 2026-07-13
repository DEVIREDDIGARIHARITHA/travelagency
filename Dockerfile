FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY travelagency/ .
RUN apt-get update && apt-get install -y maven
WORKDIR /app
RUN mvn clean package -DskipTests
EXPOSE 10000
CMD ["java", "-jar", "target/*.jar"]

FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN chmod +x ./travelagency/mvnw
RUN cd travelagency && ./mvnw clean package -DskipTests

EXPOSE 8080

ENTRYPOINT ["java","-jar","travelagency/target/*.jar"]

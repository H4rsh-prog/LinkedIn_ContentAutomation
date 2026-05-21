FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN ./mvnw clean package -DskipTests

EXPOSE 5000

ENTRYPOINT ["java", "-jar", "target/linkedIn_model-0.0.1-SNAPSHOT.jar"]
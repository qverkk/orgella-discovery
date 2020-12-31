FROM gcr.io/distroless/java:11

COPY build/libs/discovery-0.0.1-SNAPSHOT.jar DiscoveryService.jar

ENTRYPOINT ["java", "-jar", "DiscoveryService.jar"]
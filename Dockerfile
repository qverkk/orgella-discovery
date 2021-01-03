FROM adoptopenjdk/openjdk11:alpine-jre

COPY wait-for.sh wait-for.sh
COPY build/libs/discovery-0.0.1-SNAPSHOT.jar DiscoveryService.jar

ENV CONFIG_HOST=""
ENTRYPOINT ["sh", "-c", "echo 'waiting for 40 seconds for '${CONFIG_HOST:localhost}':8012 to be accessable before starting application' && /wait-for.sh -t 40 ''${CONFIG_HOST:localhost}':8012' -- java -jar DiscoveryService.jar"]
#ENTRYPOINT ["java", "-jar", "DiscoveryService.jar"]

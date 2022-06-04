FROM adoptopenjdk/openjdk11:ubi
EXPOSE 8080
RUN mkdir /opt/app
ADD target/aws.jar /opt/app
ENTRYPOINT ["java", "-jar", "/opt/app/aws.jar"]
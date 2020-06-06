# Source Image name
from openjdk:7
# Mainter Name
maintainer Amar Singh
COPY ./build/libs/ES2-0.0.1-SNAPSHOT.jar /usr/app/
# Command to update and install Apache packages
//RUN javac Main.java
//RUN apt-get update && apt-get install apache2 -y
# open port 
EXPOSE 80
# Command to run Apache server in background
CMD ["java", “-jar", “ES2-0.0.1-SNAPSHOT.jar"]
//CMD /usr/sbin/apache2ctl -D FOREGROUND

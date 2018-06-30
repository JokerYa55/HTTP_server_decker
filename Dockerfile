FROM maven:3.3.9-jdk-8
RUN git config --global http.sslVerify false
RUN mkdir -p /opt/app
WORKDIR /opt/app
RUN pwd
#RUN cd /opt/app
RUN mkdir -p /opt/app/distr
RUN cd /opt/app/distr
WORKDIR /opt/app
RUN pwd
RUN ls
RUN git clone https://github.com/JokerYa55/HTTP_server_decker.git
RUN wget https://github.com/JokerYa55/HTTP_server_decker/archive/master.zip
RUN ls
WORKDIR /opt/app/HTTP_server_decker
RUN pwd
#RUN cd /opt/app/HTTP_server_decker
RUN ls
RUN mvn package
RUN ls
#WORKDIR /opt/app/HTTP_server_decker/target
RUN ls
EXPOSE 8080
CMD java -jar /opt/app/HTTP_server_decker/target/http_server-1.jar
#CMD ["mvn", "exec:java"]

#FROM ubuntu:16.04

#RUN mkdir -p /opt/app
#RUN mkdir -p /opt/app/lib
#WORKDIR /opt/app

#COPY pom.xml /opt/app/
#RUN mvn install

#COPY adminRestApiMobile-1.jar /opt/app/

#COPY lib /opt/app/lib
#RUN mvn package

# local app port
EXPOSE 8080

# execute
#CMD java -jar adminRestApiMobile-1.jar
#CMD top

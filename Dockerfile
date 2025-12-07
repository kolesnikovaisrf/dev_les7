FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /app
RUN cd /app && mvn package
RUN cp /app/target/hello-1.0.war /opt/tomcat/webapps/
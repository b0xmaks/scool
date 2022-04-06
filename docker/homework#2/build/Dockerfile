FROM maven:latest
WORKDIR /makeapp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git \
    mvn package -Dmaven.test.skip -T 1C \
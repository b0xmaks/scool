FROM maven:3.8.5-openjdk-8
# Install packages
RUN apt update && apt upgrade -y && apt install git docker.io -y

# Clear cache
RUN apt-get clean
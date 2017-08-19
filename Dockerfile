FROM ubuntu:16.04
MAINTAINER mayur.rastogi@tothenew.com
RUN apt-get update
RUN apt-get update && apt-get -y install \
   software-properties-common \
   python-software-properties \
   wget \
   curl \
   vim \
   build-essential \
   net-tools \
   unzip

#Install openjdk-8-jre
RUN apt-get update
RUN apt-get install -y openjdk-8-jre
COPY target/KSS-Jenkins-1.0-SNAPSHOT.jar /root/KSS-Jenkins.jar
CMD ["java","-jar","root/KSS-Jenkins.jar"]

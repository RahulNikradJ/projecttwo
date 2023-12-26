FROM centos:latest
MAINTAINER rahul.Nikrad@gmail.com
RUN yum install nginx -y
RUN yum install zip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN unzip mediplus-lite.zip
RUN cp mediplus-lite/* .
EXPOSE 80

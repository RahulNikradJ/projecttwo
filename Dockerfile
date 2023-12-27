FROM ubuntu
MAINTAINER rahul.Nikrad@gmail.com
RUN apt-get install nginx -y
RUN apt-get install zip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip /var/www/html
RUN cd /var/www/html
RUN unzip mediplus-lite.zip
RUN cd mediplus-lite
RUN mv * ..
EXPOSE 80

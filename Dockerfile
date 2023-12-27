FROM ubuntu
MAINTAINER rahul.Nikrad@gmail.com
RUN apt-get install nginx -y
RUN apt-get install zip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip /var/www/html
CMD cd /var/www/html
CMD unzip mediplus-lite.zip
CMD cd mediplus-lite
CMD mv * ..
EXPOSE 80

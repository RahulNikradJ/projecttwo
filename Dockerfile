FROM ubuntu
MAINTAINER rahul.Nikrad@gmail.com
CMD apt-get install nginx -y
CMD apt-get install zip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip /var/www/html
WORKDIR /var/www/html
CMD unzip mediplus-lite.zip
CMD cp mediplus-lite/* .
EXPOSE 80

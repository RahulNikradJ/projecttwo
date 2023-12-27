FROM ubuntu
MAINTAINER rahul.Nikrad@gmail.com
RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install zip -y
RUN apt-get install unzip -y
RUN apt-get install systemctl -y
CMD "systemctl start nginx"
RUN "systemctl enable nginx"
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip /var/www/html
WORKDIR /var/www/html
RUN unzip mediplus-lite.zip
RUN cp -r  mediplus-lite/* .
RUN rm -r mediplus-lite.zip
EXPOSE 80

FROM ubuntu:latest

USER root
RUN apt-get update
RUN apt-get install -y nginx nodejs


#
RUN rm -v /etc/nginx.conf

ADD nginx.conf /etc/nginx/
ADD web /usr/share/nginx/html/
ADD web /var/www/html

RUN echo "daemon off;" >> /etc/nginx/nginx.cong

EXPOSE 90

CMD service nginx start

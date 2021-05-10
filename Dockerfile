# This works on raspberry
FROM arm32v7/nginx
# This works on M1
# FROM arm64v8/nginx

USER root
#RUN apt-get update
#RUN apt-get install -y nginx nodejs

# rm default conf, add new, add static file
RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
ADD web /usr/share/nginx/html/
ADD web /var/www/html

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 1337
CMD service nginx start

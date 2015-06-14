# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Andreas Nygard

# Install #################################################

RUN apt-get update

RUN apt-get install -y nginx  

# Replace the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD service nginx start

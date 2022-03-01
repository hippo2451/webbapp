FROM ubuntu
MAINTAINER hippo2451 (hippo2451@yahoo.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/cloudacademy/static-website-example.git /var/www/html/
EXPOSE 80
CMD [“nginx”, “-g”, “daemon off;”]

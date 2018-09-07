FROM ubuntu:16.04  
MAINTAINER AdI  
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo  
RUN apt-get update && \  
apt-get install -y apache2  
RUN touch index.html && \  
echo "My website" > index.html && \  
cp index.html /var/www/html/  
RUN mkdir -p /html  
COPY ./index.html /html/  
EXPOSE 80
ADD index.html /var/www/html/  
RUN service apache2 start
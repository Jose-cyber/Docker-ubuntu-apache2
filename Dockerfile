FROM ubuntu:16.04

RUN apt update && apt upgrade -y 
RUN apt install apache2 -y 
RUN rm /var/www/html/index.html
RUN echo "<h1>meu primeiro container docker</h1>" >> /var/www/html/index.html
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]

EXPOSE 80 

	
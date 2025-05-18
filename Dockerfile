FROM httpd:2.4
RUN apt update
RUN apt install apache2 -y
COPY html/ /usr/local/apache2/htdocs/
RUN date -u >/var/www/html/buildtime.txt
EXPOSE 80/tcp
CMD service apache2 start && bash

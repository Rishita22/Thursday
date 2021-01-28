FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page263/den.zip
RUN apt install unzip -y
RUN unzip den.zip
RUN rm -rf den.zip
RUN mv den/* /usr/local/apache2/htdocs
CMD httpd-foreground

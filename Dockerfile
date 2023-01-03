FROM centos:latest
MAINTAINER aamirimran490@gmail.com
RUN yum install -y httpd \
   zip \
  unzip
ADD http://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/htm
RUN unzip loxury.zip
RUN cp -rvf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D" "FORGROUND"]
EXPOSE 80

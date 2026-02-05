FROM amazonlinux:2023

RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

COPY index.html /var/www/html/index.html
COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]

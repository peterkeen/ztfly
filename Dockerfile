FROM phusion/baseimage:18.04-1.0.0

CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y nginx

RUN curl -s https://install.zerotier.com | bash
RUN rm /var/lib/zerotier-one/identity.secret

RUN mkdir /etc/service/zerotier-one
COPY zerotier.sh /etc/service/zerotier-one/run
RUN chmod +x /etc/service/zerotier-one/run

RUN mkdir /etc/service/nginx
COPY nginx.sh /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run
COPY nginx.conf /etc/nginx/sites-enabled/default_site.conf

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
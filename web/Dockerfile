FROM debian

RUN apt-get update
RUN apt-get install -y nginx supervisor

RUN rm /etc/nginx/sites-enabled/default

ADD . /home/docker/code/web/

RUN mkdir -p /code/ui

# setup all the configfiles
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN ln -s /home/docker/code/web/nginx-app.conf /etc/nginx/sites-enabled/
RUN ln -s /home/docker/code/web/supervisor-app.conf /etc/supervisor/conf.d/

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["supervisord", "-n"]

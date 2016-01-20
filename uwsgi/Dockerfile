FROM debian:jessie

MAINTAINER dpfg

RUN apt-get update && apt-get install --no-install-recommends -y -q \
  build-essential python3 python3-dev python3-setuptools supervisor \
  software-properties-common python-software-properties \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN easy_install3 pip
RUN pip install uwsgi

# install our code
add . /code/uwsgi/

# setup all the configfiles
RUN ln -s /code/uwsgi/supervisor-app.conf /etc/supervisor/conf.d/

# RUN pip install
RUN pip install -r /code/uwsgi/requirements.txt

# share as volume because we need to pass uwsgi_params to nginx
VOLUME ["/code/uwsgi/"]

EXPOSE 8001

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
# CMD ["supervisord", "-n"]

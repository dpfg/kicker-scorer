FROM debian

run apt-get update
run apt-get install -y nginx supervisor

run rm /etc/nginx/sites-enabled/default

add . /home/docker/code/web/

# setup all the configfiles
run echo "daemon off;" >> /etc/nginx/nginx.conf
run ln -s /home/docker/code/web/nginx-app.conf /etc/nginx/sites-enabled/
run ln -s /home/docker/code/web/supervisor-app.conf /etc/supervisor/conf.d/

cmd ["supervisord", "-n"]

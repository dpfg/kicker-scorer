# kicker-scorer
Kicker scorer application

## Architecture

The end app should have the following layers

              |
          _________
          | nginx |             - 'web' container
          ---------
          /       \             
    ------          ---------
      UI             API (N)    - 'ui' and 'api' containers respectively
    ------          ---------
                        |
                    ---------
                        DB      - 'db' container
                    ---------

kicker-scorer         - aggregate everything (docker-compose?)
kicker-scorer-load    - nginx container
kicker-scorer-db      - mariadb container
kicker-scorer-api     - flask uwsgi web app container
kicker-scorer-ui      - angular2 static files

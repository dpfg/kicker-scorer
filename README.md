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

* web     - nginx container
* db      - mariadb container
* api     - flask uwsgi web app container
* ui      - angular2 static files

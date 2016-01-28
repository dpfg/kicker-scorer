# kicker-scorer
Kicker scorer application

User Interface:

https://github.com/dpfg/kicker-scorer-ui

Server-side:

https://github.com/dpfg/kicker-scorer-api

## Architecture

The end app has the following containers:

              |
          _________
          | nginx |             
          ---------
          /       \             
    ------          ----------------
      UI             UWSGI (Runtime)    
    ------          ----------------
                    /               \
            ---------             --------------
                DB                    app src
            ---------             --------------

* web     - nginx container
* db      - mariadb container
* uwsgi   - python runtime
* api     - flask app sources (volume)
* ui      - SPA distributive (volume)


## Installation

Assuming docker compose has been installed on a server.

Run:

``` docker-compose up ```

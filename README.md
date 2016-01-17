# kicker-scorer
Kicker scorer application

## Architecture

The end app should have the following containers:

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

# Getting Started with Docker-compose
    In order to run this aplication you must run "docker-compose up --build" command
    to access the aplication you should reach http://localhost/ or http://127.0.0.1:80
# For the web server I have added nginix.
    nginix will copy build contents each time the image is built, for this I have used multy-stage Dockerfile ./sys-stats/Dockerfile.

# please note: in order to use this aplication you must have docker installed.
    The code for this aplication is located here: https://github.com/costin-ion/redacre/tree/docker-compose


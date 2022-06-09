# librenms-server
LibreNMS server configs

## Setup
Before starting the containers for the first time, create the files `.env` and `msmtpd.env` using the templates. Then you can start LibreNMS with `sudo docker compose up`. Even though the LibreNMS container itself runs Nginx, one should configure the reverse proxy and HTTPS outside the containers.

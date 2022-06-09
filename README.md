# librenms-server
LibreNMS server configs

## Setup
Before starting the containers for the first time, create the files `.env` and `msmtpd.env` using the templates. Then you can start LibreNMS with `sudo docker compose up`.

To enable HTTPS, install Certbot and Nginx on the host. They should be installed on the host instead of Docker containers, as on the host Certbot has an automatic schedule and can restart Nginx automatically. Then remove `/etc/nginx/sites-enabled/default` and copy [`nginx/librenms.conf`](nginx/librenms.conf) to the folder.

server {
  listen 80 default_server;
  listen [::]:80 default_server;
  server_name {{ inventory_hostname }};
  root /var/www/html/{{ inventory_hostname }};
  index index.html index.htm index.nginx-debian.html;
  location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }

}
{% from "apache/map.jinja" import apache with context %}

{% if grains['os_family'] == 'RedHat' %}

vhosts_dir:
  file.directory:
    - name: /etc/httpd/vhosts.d/
    - makedirs: True

{% endif %}

site_vhosts:
  apache.configfile:
    - name: {{ apache.vhost_loc }}site.conf
    - config:
      - VirtualHost:
          this: '*:80'
          ServerName:
            - mylabserver.com
          ServerAlias:
            - www.mylabserver.com
          ErrorLog: logs/website.com-error_log
          CustomLog: logs/website.com-access_log combined
          DocumentRoot: /var/www/html/mylabserver.com

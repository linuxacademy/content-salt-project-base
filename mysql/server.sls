{% from "mysql/map.jinja" import mysql with context %}

{% if grains['os_family'] == 'Debian' %}

mysql_debconf_install:
  pkg.installed:
    - name: debconf

mysql_debconf_utils:
  pkg.installed:
    - name: debconf-utils


mysql_debconf_settings:
  debconf.set:
    - name: mysql-server
    - data:
        'mysql-server/root_password': {'type': 'password', 'value': 'passpass'}
        'mysql-server/root_password_again': {'type': 'password', 'value': 'passpass'}
    - require:
      - pkg: debconf
    - require_in:
      - mysql_server_install

{% endif %}


mysql_server_install:
  pkg.installed:
    - name: {{ mysql.server }}


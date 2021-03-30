{% from "mysql/map.jinja" import mysql with context %}

mysql_client_install:
  pkg.installed:
    - name: {{ mysql.client }}


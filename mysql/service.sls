{% from "mysql/map.jinja" import mysql with context %}

mysql_service_enable:
  service.running:
    - name: {{ mysql.service }}


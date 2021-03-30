{% from "mysql/map.jinja" import mysql with context %}

mysql_restart:
  module.wait:
    - name: service.restart
    - m_name: {{ mysql.service }}
    - onchanges:
      - mysql_server_config


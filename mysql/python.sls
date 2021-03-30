{% from "mysql/map.jinja" import mysql with context %}

mysql_python_install:
  pkg.installed:
    - name: {{ mysql.python }}

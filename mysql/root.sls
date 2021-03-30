mysql_root_user:
  mysql_user.present:
    - name: root
    - password: passpass
    - host: localhost


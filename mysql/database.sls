mysql_test_db_create:
  mysql_database.present:
    - name: testdb
    - host: localhost
    - connection_user: root
    - connection_pass: passpass
    - connection_charset: utf8

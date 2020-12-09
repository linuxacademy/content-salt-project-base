{% from "user/map.jinja" import user with context %}

skinner:
  user.present:
    - fullname: Walter Skinner
    - shell: /bin/zsh
    - home: /home/skinner
    - groups:
      - xfiles
      - {{ sudoer }}

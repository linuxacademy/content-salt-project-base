{% from "base/map.jinja" import base with context %}

install_vim:
  pkg.installed:
    - name: {{ base.vim }}

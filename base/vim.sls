{% from "base/map.jinja" import base with context %}

install_editor:
  pkg.installed:
    - name: {{ base.vim }}

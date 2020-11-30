{% from "dev/map.jinja" import dev with context %}

install_vim:
  pkg.installed:
    - name: {{ dev.vim }}

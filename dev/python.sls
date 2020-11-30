{% from "dev/map.jinja" import dev with context %}

install_python:
  pkg.installed:
    - name: {{ dev.python }}

install_pip:
  pkg.installed:
    - name: {{ dev.python-pip}}

pull image:
    docker.pulled:
      - name: kollaglue/centos-rdo-mariadb-app
      - tag: kilo

galera.cnf:
    file.managed:
    - name: {{ salt['pillar.get']('node_config_directory') }}galera.cnf
    - source: salt://mariadb/galera.cnf.j2
    - user: root
    - template: jinja
    - defaults:
        api_interface: {{ salt['pillar.get']('api_interface') }}
        var2: 2

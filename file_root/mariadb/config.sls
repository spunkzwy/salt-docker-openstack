Ensure_config_template_dir_exists:
  file.directory:
   - name: {{ salt['pillar.get']('node_templates_directory') }}{{ service_name }}
   - makedirs: True

Ensure_confige_dir_exists:
   file.directory:
   - name: {{ salt['pillar.get']('node_config_directory') }}
   - makedirs: True

pkg install:
    pkg.installed:
      - pkgs:
         - vim-enhanced

start docker:
    service.running:
      - name: docker
      - enable: True
   

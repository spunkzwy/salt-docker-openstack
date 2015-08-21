Ensure_config_template_dir_exists:
  file.directory:
   - name: salt['pillar.get']('node_templates_directory:service_name')
   - makedirs: True

Ensure_confige_dir_exists:
   file.directory:
   - name: salt['pillar.get']('node_confi_directory:service_name')
   - makedirs: True

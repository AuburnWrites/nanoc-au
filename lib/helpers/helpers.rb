module SiteSettings
  require 'yaml'
  $settings = YAML.load_file('lib/settings.yaml').symbolize_keys
end
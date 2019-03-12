name "sensu-omnibus-uoe"

dependency 'ruby'
dependency 'rubygems'

build do
  env = with_standard_compiler_flags(with_embedded_path)

  gem "install sensu-plugins-cpu-checks" \
    " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-disk-checks" \
    " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-load-checks" \
    " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-process-checks" \
    " --no-ri --no-rdoc", env: env

end

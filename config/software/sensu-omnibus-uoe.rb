name "sensu-omnibus-uoe"

dependency 'ruby'
dependency 'rubygems'
dependency 'postgresql'

build do
  env = with_standard_compiler_flags(with_embedded_path)

 gem "install sensu-plugins-ceph" \
    " -- version '1.0.1'" \
    " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-cpu-checks" \
      " -- version '3.0.0'" \
    " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-disk-checks" \
      " -- version '4.0.1'" \
    " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-elasticsearch" \
      " -- version '3.0.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-load-checks" \
      " -- version '4.0.2'" \
    " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-postgres" \
      " -- version '2.3.2'" \
    " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-process-checks" \
      " -- version '3.2.0'" \
    " --no-ri --no-rdoc", env: env

end

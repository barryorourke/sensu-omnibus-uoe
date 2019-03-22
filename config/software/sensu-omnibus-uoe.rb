name "sensu-omnibus-uoe"

dependency 'ruby'
dependency 'rubygems'
dependency 'postgresql'

build do
  env = with_standard_compiler_flags(with_embedded_path)

 gem "install sensu-plugins-ceph" \
     " --version '1.0.1'" \
     " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-cpu-checks" \
      " --version '3.0.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-dhcp" \
      " --version '1.0.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-disk-checks" \
      " --version '4.0.1'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-dns" \
      " --version '2.1.1'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-elasticsearch" \
      " --version '3.0.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-filesystem-checks" \
      " --version '1.0.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-hardware" \
      " --version '1.3.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-http" \
      " --version '4.1.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-influxdb" \
      " --version '1.4.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-ipmi" \
      " --version '1.0.1'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-load-checks" \
      " --version '4.0.2'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-logs" \
      " --version '3.0.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-mailer" \
      " --version '4.0.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-memory-checks" \
      " --version '3.2.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-mongodb" \
      " --version '2.1.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-mysql" \
      " --version '3.1.1'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-network-checks" \
      " --version '3.2.1'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-openldap" \
      " --version '1.0.1'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-postgres" \
      " --version '1.3.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-process-checks" \
      " --version '3.2.0'" \
      " --no-ri --no-rdoc", env: env

 gem "install sensu-plugins-raid-checks" \
      " --version '2.0.3'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-snmp" \
      " --version '2.1.0'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-ssl" \
      " --version '2.0.1'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-slack" \
      " --version '3.1.1'" \
      " --no-ri --no-rdoc", env: env

  gem "install sensu-plugins-systemd" \
      " --version '0.1.0'" \
      " --no-ri --no-rdoc", env: env 

end

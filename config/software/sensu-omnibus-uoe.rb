name "sensu-omnibus-uoe"

dependency 'ruby'
dependency 'rubygems'

build do
  env = with_standard_compiler_flags(with_embedded_path)

  gem "install sensu-plugins-load-checks" \
      " --version '4.0.2'" \
      " --no-ri --no-rdoc", env: env
end

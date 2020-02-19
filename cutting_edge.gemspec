Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'
  s.required_ruby_version = '>= 2.4'

  s.name              = 'cutting_edge'
  s.version           = '0'
  s.date              = '2018-09-28'
  s.license           = 'GPLv3.0'

  s.summary     = 'Self-hosted dependency monitoring, including shiny badges.'
  s.description = 'Self-hosted dependency monitoring, including shiny badges.'

  s.authors  = ['Dawa Ometto', 'Bart Kamphorst']
  s.email    = 'd.ometto@gmail.com'
  s.homepage = 'http://github.com/repotag/cutting_edge'

  s.require_paths = %w[lib]

  s.executables = ['cutting_edge']

  s.add_dependency 'gemnasium-parser', '~> 0.1.9'
  s.add_dependency 'http', '~> 4.3'
  s.add_dependency 'sucker_punch', '~> 2.1'
  s.add_dependency 'sinatra', '~> 2.0'
  s.add_dependency 'moneta', '~> 1.2'
  s.add_dependency 'victor', '~> 0.2.8'
  s.add_dependency 'rufus-scheduler', '~> 3.6'
  s.add_dependency 'sinatra-logger', '~> 0.3'
  s.add_dependency 'toml-rb', '~> 2.0'
end
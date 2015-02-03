require_relative 'lib/rails_admin-auto-enum/version.rb'

Gem::Specification.new do |s|
  s.name        = 'rails_admin-auto-enum'
  s.version     = RailsAdminAutoEnum::VERSION
  s.author      = 'Giovanni Capuano'
  s.email       = 'webmaster@giovannicapuano.net'
  s.homepage    = 'https://github.com/RoxasShadow'
  s.summary     = "Provide enum fields for the fields that really need them."
  s.description = "Provide enum fields for the fields that really need them, automatically. An example of use could be with seralized objects."
  s.license     = 'WTFPL'

  s.require_paths = ['lib']
  s.files         = Dir.glob('lib/**/*.rb')

  s.add_dependency 'rails_admin', '~> 0.6'
end

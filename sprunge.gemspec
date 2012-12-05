Kernel.load 'lib/sprunge/version.rb'

Gem::Specification.new { |s|
	s.name          = 'sprunge'
	s.version       = Sprunge::version
	s.author        = 'Giovanni Capuano'
	s.email         = 'webmaster@giovannicapuano.net'
	s.homepage      = 'http://www.giovannicapuano.net'
	s.platform      = Gem::Platform::RUBY
	s.summary       = 'Client for sprunge.us'
	s.description   = 'Allows to upload your texts on sprunge.us'
	s.require_paths = ['lib']
	s.files         = Dir.glob('lib/**/*.rb')
  s.executables   = 'sprunge'
}
require './lib/music-utils'

Gem::Specification.new do |s|
  # Basic Info
  s.name          = 'music-utils'
  s.version       = MusicUtils::VERSION
  s.summary       = 'music-utils'
  s.description   = 'Utils for music. At the moment only to classify intervals.'
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Jorge Luis Pérez']
  s.email         = ['jorgeluis700@gmail.com']
  s.homepage      = 'http://github.com/jorgeluis700/music-utils'
  s.date          = Time.now.utc.strftime("%Y-%m-%d")
  s.license       = 'MIT'

  # Files and Paths
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")  
  s.require_path  = 'lib'
  
  # Ruby Gems
  s.required_rubygems_version = ">= 1.3.6"

  # Development Dependencies
  s.add_development_dependency  'rspec'
  s.add_development_dependency  'rake', '>= 0.8'
  
end
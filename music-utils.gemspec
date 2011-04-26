
Gem::Specification.new do |s|
  # Basic Info
  s.name          = 'music-utils'
  s.version       = '0.3.20'
  s.summary       = 'music-utils'
  s.description   = 'Utils for music'
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Jorge Luis Pérez']
  s.email         = ['jorgeluis700@gmail.com']
  s.homepage      = 'http://github.com/jorgeluis700/music-utils'
  s.license       = 'MIT'
  
  # Files and Paths
  s.files         = `git ls-files`.split("\n")
  s.require_path  = 'lib'
  
  # Dependencies
  s.add_development_dependency('rspec')
  s.required_rubygems_version = ">= 1.3.6"

end
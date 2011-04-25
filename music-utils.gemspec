
Gem::Specification.new do |s|
  # Basic Info
  s.name          = 'music-utils'
  s.version       = '0.0.1'
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
  
  # Development Dependencies
  s.add_development_dependency('rspec')

end
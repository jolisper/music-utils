
Gem::Specification.new do |s|
  s.name          = "music-utils"
  s.version       = "0.0.1"
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Jorge Luis Pérez"]
  s.email         = ["jorgeluis700@gmail.com"]
  s.homepage      = "http://github.com/jorgeluis700/music-utils"
  s.summary       = "music-utils"
  s.description   = "Utils for music"
  s.files         = `git ls-files`.split("\n")
  s.require_path  = 'lib'

  #s.rubyforge_project = s.name
  #s.required_rubygems_version = ">= 1.3.6"

  # If you have runtime dependencies, add them here
  # s.add_runtime_dependency "other", "~> 1.2"
  
  # If you have development dependencies, add them here
  # s.add_development_dependency "another", "= 0.9"

  # The list of files to be contained in the gem
  # s.executables   = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  # s.extensions    = `git ls-files ext/extconf.rb`.split("\n")

  # For C extensions
  # s.extensions = "ext/extconf.rb"
end
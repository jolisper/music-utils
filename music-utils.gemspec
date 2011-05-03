# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "music-utils/version"

Gem::Specification.new do |s|
  # Basic Info
  s.name          = "music-utils"
  s.version       = MusicUtils::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Jorge Luis Pérez"]
  s.email         = ["jorgeluis700@gmail.com"]
  s.homepage      = "http://github.com/jorgeluis700/music-utils"
  s.summary       = %q{Utils for music}
  s.description   = %q{Utils for music. At the moment only to classify intervals.}
  s.license       = %q{MIT}

  # Files
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  # Ruby Gems Version
  s.required_rubygems_version = ">= 1.3.6"

  # Dependencies
  s.add_development_dependency  "rake", ">= 0.8"
  s.add_development_dependency  "bundler"
  s.add_development_dependency  "rspec"
  
end
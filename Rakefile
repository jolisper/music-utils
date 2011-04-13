require 'rubygems'
require 'bundler/setup'

require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'

task :default => [:spec]

desc "Run all examples"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.ruby_opts = '-I lib'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = ['--color --format doc']
  spec.fail_on_error = false
end



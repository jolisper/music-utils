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
  spec.rspec_opts = ['--format documentation']
end

desc "Corriendo tests unitarios"
Rake::TestTask.new "test_units"  do |t|
  t.pattern = 'test/*_test.rb'
  t.verbose = true
  t.warning = true
end


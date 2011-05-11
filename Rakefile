require 'rake'
require 'rspec/core/rake_task'

task :default => [:spec]

# RSpec tasks
desc "Run all examples"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.ruby_opts = '-I lib'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = ['--color --format doc']
  spec.fail_on_error = false
end

desc "Run benchmarks"
task :bench do
  Dir["benchmark/**/*_bm.rb"].each do |f|
    eval(File.read(f))
  end
end

# Gems tasks
require "bundler"
Bundler::GemHelper.install_tasks

desc "Clean automatically generated files"
task :clean do
  FileUtils.rm_rf "pkg"
end

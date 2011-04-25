require 'rubygems'
require 'bundler/setup'

require 'rake'
require 'rspec/core/rake_task'

task :default => [:spec]

desc "Run all examples"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.ruby_opts = '-I lib'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = ['--color --format doc']
  spec.fail_on_error = false
end

# Gems tasks
gemspec = nil

desc "Load the gemspec"
task :load_gemspec do
  gemspec = eval(File.read(Dir["*.gemspec"].first))
end

desc "Validate the gemspec"
task :gemspec => :load_gemspec do
  gemspec.validate
end

desc "Build gem locally"
task :build => :gemspec do
  system "gem build #{gemspec.name}.gemspec"
  FileUtils.mkdir_p "pkg"
  FileUtils.mv "#{gemspec.name}-#{gemspec.version}.gem", "pkg"
end

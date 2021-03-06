require 'rubygems'
require 'ci/reporter/rake/rspec'
require 'rspec/core/rake_task'

THISDIR = File.dirname(__FILE__)

namespace :foreman do
  Dir.chdir(File.join(THISDIR, '..', 'modules/foreman'))
  load 'Rakefile'
end

task :default => ['ci:setup:rspec', 'foreman:test']

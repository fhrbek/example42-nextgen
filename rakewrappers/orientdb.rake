require 'rubygems'
require 'ci/reporter/rake/rspec'
require 'rspec/core/rake_task'

THISDIR = File.dirname(__FILE__)

namespace :orientdb do
  Dir.chdir(File.join(THISDIR, '..', 'modules/orientdb'))
  load 'Rakefile'
end

task :default => ['ci:setup:rspec', 'orientdb:test']

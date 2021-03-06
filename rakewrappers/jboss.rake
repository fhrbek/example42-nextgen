require 'rubygems'
require 'ci/reporter/rake/rspec'
require 'rspec/core/rake_task'

THISDIR = File.dirname(__FILE__)

namespace :jboss do
  Dir.chdir(File.join(THISDIR, '..', 'modules/jboss'))
  load 'Rakefile'
end

task :default => ['ci:setup:rspec', 'jboss:test']

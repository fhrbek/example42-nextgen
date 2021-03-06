require 'rubygems'
require 'ci/reporter/rake/rspec'
require 'rspec/core/rake_task'

THISDIR = File.dirname(__FILE__)

namespace :splunk do
  Dir.chdir(File.join(THISDIR, '..', 'modules/splunk'))
  load 'Rakefile'
end

task :default => ['ci:setup:rspec', 'splunk:test']

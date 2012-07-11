require 'rubygems'
require 'ci/reporter/rake/rspec'
require 'rspec/core/rake_task'

THISDIR = File.dirname(__FILE__)

namespace :php do
  Dir.chdir(File.join(THISDIR, '..', 'modules/php'))
  load 'Rakefile'
end

task :default => ['ci:setup:rspec', 'php:test']

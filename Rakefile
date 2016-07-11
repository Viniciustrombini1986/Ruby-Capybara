require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'watir-webdriver'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

task :default => :features
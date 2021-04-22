# encoding: utf-8

require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'juwelier'

Juwelier::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "ruby-hl7"
  gem.homepage = "http://github.com/toppa/ruby-hl7"
  gem.license = "MIT"
  gem.summary = %Q{Ruby HL7 Library}
  gem.description = %Q{A simple library to parse and generate HL7 2.x messages}
  gem.email = "ruby-hl7@googlegroups.com"
  gem.authors = ["Mark Guzman"]
end

Juwelier::RubygemsDotOrgTasks.new
require 'rake/testtask'

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

desc "Code coverage detail"

task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task default: :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION.yml') ? File.read('VERSION.yml') : ""
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "ruby-hl7 #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

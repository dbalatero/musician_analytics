require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "musician_analytics"
    gem.summary = %Q{Provides tools for programmer/musicians to quickly collect stats about their band.}
    gem.description = %Q{I wrote this quick library for aggregating analytics for my band, Operation ID. I wanted to track Last.fm, Twitter, and Myspace interactions over time. You might want to do this too!}
    gem.email = "dbalatero@gmail.com"
    gem.homepage = "http://github.com/dbalatero/musician_analytics"
    gem.authors = ["David Balatero"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.add_dependency 'monster_mash'
    gem.add_dependency 'json'
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "musician_analytics #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "self-notifo"
    gem.summary = %Q{Send yourself real-time notifications from your Rails app using Notifo.}
    gem.description = %Q{The self-notifo gem sends notifications to your own Notifo account from your Rails application.}
    gem.email = "gaelian.ditchburn@gmail.com"
    gem.homepage = "http://github.com/gaelian/self-notifo"
    gem.authors = ["Gaelian Ditchburn"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.add_dependency('httparty', '>= 0.6.1')
    gem.add_dependency('rails', '>= 2.3.6')
    gem.files = Dir["{lib,generators}/**/*"] + %w{ Rakefile self-notifo.gemspec VERSION }
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
  rdoc.title = "self-notifo #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

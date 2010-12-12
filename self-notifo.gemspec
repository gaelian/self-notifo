# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{self-notifo}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gaelian Ditchburn"]
  s.date = %q{2010-12-12}
  s.description = %q{The self-notifo gem sends notifications to your own Notifo account from your Rails application.}
  s.email = %q{gaelian.ditchburn@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "Rakefile",
    "VERSION",
    "generators/self_notifo/USAGE",
    "generators/self_notifo/self_notifo_generator.rb",
    "generators/self_notifo/templates/self-notifo.yml",
    "lib/self-notifo.rb",
    "self-notifo.gemspec"
  ]
  s.homepage = %q{http://github.com/gaelian/self-notifo}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Send yourself real-time notifications from your Rails app using Notifo.}
  s.test_files = [
    "spec/self_notifo_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["<= 1.3.1"])
      s.add_runtime_dependency(%q<httparty>, [">= 0.6.1"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
    else
      s.add_dependency(%q<rspec>, ["<= 1.3.1"])
      s.add_dependency(%q<httparty>, [">= 0.6.1"])
      s.add_dependency(%q<rails>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["<= 1.3.1"])
    s.add_dependency(%q<httparty>, [">= 0.6.1"])
    s.add_dependency(%q<rails>, [">= 3.0.0"])
  end
end


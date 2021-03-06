# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{redis_store_jr}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Plante"]
  s.date = %q{2010-11-02}
  s.description = %q{Simple Redis Cache Store for Rails}
  s.email = %q{nap@zerosum.org}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/redis_store.rb",
     "lib/redis_store/cache/redis_store.rb",
     "lib/redis_store/marshalled_client.rb",
     "lib/redis_store/session/redis_session_store.rb",
     "spec/cache_spec.rb",
     "spec/marshalled_client_spec.rb",
     "spec/session_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/zapnap/redis_store_jr}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple Redis Cache Store for Rails}
  s.test_files = [
    "spec/cache_spec.rb",
     "spec/marshalled_client_spec.rb",
     "spec/session_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<redis>, ["~> 2.0"])
      s.add_development_dependency(%q<activesupport>, ["~> 2.3"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<redis>, ["~> 2.0"])
      s.add_dependency(%q<activesupport>, ["~> 2.3"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<redis>, ["~> 2.0"])
    s.add_dependency(%q<activesupport>, ["~> 2.3"])
  end
end


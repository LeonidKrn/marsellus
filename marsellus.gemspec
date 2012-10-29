# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "marsellus/version"

Gem::Specification.new do |s|
  s.name        = "marsellus"
  s.version     = Marsellus::VERSION
  s.authors     = ["Leonid Krinitsyn"]
  s.email       = ["leonidkrn@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Gem for objects validation}
  s.description = %q{Gem for objects validation}

  s.rubyforge_project = "marsellus"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

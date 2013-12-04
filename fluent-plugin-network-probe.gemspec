# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-network-probe"
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["Yuichi UEMURA"]
  gem.email       = ["yuichi.u@gmail.com"]
  gem.homepage    = "https://github.com/u-ichi/fluent-plugin-network-probe"
  gem.summary     = %q{Fluentd input plugin to probe network latency and keepalive, similar to smokeping}
  gem.description = %q{Fluentd input plugin to probe network latency and keepalive, similar to smokeping}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency "fluentd", ">= 0.10.7"
  gem.add_dependency "eventmachine"

  gem.add_development_dependency "rake"
end


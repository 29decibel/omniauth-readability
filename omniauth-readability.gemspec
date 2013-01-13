# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-readability/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["dongbin.li"]
  gem.email         = ["mike.d.1984@gmail.com"]
  gem.description   = %q{readability omniauth strategy}
  gem.summary       = %q{readability omniauth strategy}
  gem.homepage      = "https://github.com/29decibel/omniauth-readability"

	gem.rubyforge_project = "omniauth-readability"
	gem.add_dependency 'omniauth', '>= 0.2.6'
  gem.add_dependency 'omniauth-oauth', '>= 1.0.0.rc2'
  gem.add_dependency 'multi_json'


  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-readability"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Readability::VERSION
end


# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hash-class'

Gem::Specification.new do |gem|
  gem.name          = "hash-class"
  gem.version       = HashClass::VERSION
  gem.authors       = ["Dennis Blommesteijn"]
  gem.email         = ["dennis@blommesteijn.com"]
  gem.description   = %q{Extends Ruby's Hash object with assign_if}
  gem.summary       = %q{Extends Ruby's Hash object with assign_if}
  gem.homepage      = "https://github.com/dblommesteijn/hash-class"

  # dependencies
  gem.add_development_dependency "rake", "> 10.0.0"
  gem.add_development_dependency "test-unit", "> 3.0.0"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

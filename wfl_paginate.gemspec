# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wfl_paginate/version'

Gem::Specification.new do |spec|
  spec.name          = "wfl_paginate"
  spec.version       = WflPaginate::VERSION
  spec.authors       = ["wpzero"]
  spec.email         = ["wpcreep@gmail.com"]
  spec.summary       = %q{paginate}
  spec.description   = "a simple paginate module"
  spec.homepage      = "https://github.com/wpzero/wfl_paginate"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 3.2.0"
  spec.add_dependency "activemodel", ">= 3.2.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

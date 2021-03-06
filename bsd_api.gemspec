# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bsd_api/version'

Gem::Specification.new do |spec|
  spec.name          = "bsd_api"
  spec.version       = BsdApi::VERSION
  spec.authors       = ["Quinn Lee"]
  spec.email         = ["Quinn@vermonster.com"]
  spec.description   = %q{Wraper for Blue State Digital}
  spec.summary       = %q{Posts a request to create a constituent}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_runtime_dependency "rest-client"
  spec.add_development_dependency "rake"
end

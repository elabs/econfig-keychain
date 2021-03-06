# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'econfig/keychain/version'

Gem::Specification.new do |spec|
  spec.name          = "econfig-keychain"
  spec.version       = Econfig::Keychain::VERSION
  spec.authors       = ["Kim Burgestrand", "Elabs AB"]
  spec.email         = ["kim@burgestrand.se", "dev@elabs.se"]
  spec.summary       = %q{An OSX keychain adapter for Econfig.}
  spec.homepage      = "https://github.com/elabs/econfig-keychain"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.0"

  spec.add_dependency "econfig", "~> 2.0"
  spec.add_dependency "mellon", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

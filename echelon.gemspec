# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'echelon/version'

Gem::Specification.new do |spec|
  spec.name          = "echelon"
  spec.version       = Echelon::VERSION
  spec.authors       = ["Jam Bees"]
  spec.email         = ["jam@jamandbees.net"]
  spec.summary       = %q{A web service that receives information about servers.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "datamapper"
  spec.add_development_dependency "dm-postgres-adapter"
  spec.add_development_dependency "sinatra"
  spec.add_development_dependency "thin"
end

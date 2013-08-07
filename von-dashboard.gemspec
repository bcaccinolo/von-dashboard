# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'von/dashboard/version'

Gem::Specification.new do |spec|
  spec.name          = "von-dashboard"
  spec.version       = Von::Dashboard::VERSION
  spec.authors       = ["bcaccinolo"]
  spec.email         = ["benoit.caccinolo@gmail.com"]
  spec.description   = "Von dashboard"
  spec.summary       = "Von dashboard using Rickshaw"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency('sinatra')
  spec.add_dependency "sinatra-contrib"
  spec.add_dependency('von')
end

# Reference documentation: http://docs.rubygems.org/read/chapter/20

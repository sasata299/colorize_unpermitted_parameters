# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'colorize_unpermitted_parameters/version'

Gem::Specification.new do |spec|
  spec.name          = "colorize_unpermitted_parameters"
  spec.version       = ColorizeUnpermittedParameters::VERSION
  spec.authors       = ["sasata299"]
  spec.email         = ["sasata299@livedoor.com"]
  spec.description   = %q{Colorize unpermitted parameters}
  spec.summary       = %q{Colorize unpermitted parameters}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "term-ansicolor"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

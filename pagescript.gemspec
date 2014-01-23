# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pagescript/version'

Gem::Specification.new do |spec|
  spec.name          = "pagescript"
  spec.version       = Pagescript::VERSION
  spec.authors       = ["Eugene Kovalev"]
  spec.email         = ["seanchas@gmail.com"]
  spec.description   = %q{Pagescript}
  spec.summary       = %q{Pagescript}
  spec.homepage      = "http://cloudorgchart.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

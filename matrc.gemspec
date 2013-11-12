# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'matrc/version'

Gem::Specification.new do |spec|
  spec.name          = "matrc"
  spec.version       = Matrc::VERSION
  spec.authors       = ["Raquel Alvarez - Carlota Lázaro"]
  spec.email         = ["alu0100700435@ull.edu.es - alu0100698862@ull.edu.es"]
  spec.description   = %q{ Gema que usará la funcion de una matriz para la representacion de matrices densas y dispersas }
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

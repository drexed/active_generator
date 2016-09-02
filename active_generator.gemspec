# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "active_generator/version"

Gem::Specification.new do |spec|
  spec.name = "active_generator"
  spec.version = ActiveGenerator::VERSION
  spec.authors = ["Juan Gomez"]
  spec.email = ["j.gomez@drexed.com"]

  spec.summary = %q{Gem for commonly used generators.}
  spec.description = %q{Extend the base rails generators with commonly used generators.}
  spec.homepage = "http://drexed.github.io/active_generator"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "generator_spec"

  spec.add_development_dependency 'fasterer'
  spec.add_development_dependency 'flay'
  spec.add_development_dependency 'reek'
  spec.add_development_dependency 'rubocop'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap/toggle/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap-toggle-rails"
  spec.version       = Bootstrap::Toggle::Rails::VERSION
  spec.authors       = ["Raphael Kallensee"]
  spec.email         = ["raphael@kallensee.name"]

  spec.summary       = %q{Bootstrap Toggle (unofficial) plugin for the Rails asset pipeline}
  spec.description   = %q{Bootstrap Toggle is a highly flexible Bootstrap plugin that converts checkboxes into toggles.}
  spec.homepage      = "https://github.com/rkallensee/bootstrap-toggle-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

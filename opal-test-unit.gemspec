lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "opal/test/unit/version"

Gem::Specification.new do |spec|
  spec.name          = "opal-test-unit"
  spec.version       = Opal::Test::Unit::VERSION
  spec.authors       = ["youchan"]
  spec.email         = ["youchan01@gmail.com"]

  spec.summary       = %q{A unit test framework for Opal.}
  spec.description   = %q{A unit test framework for Opal.}
  spec.homepage      = "https://github.com/youchan/opal-unit-test"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "opal"
end

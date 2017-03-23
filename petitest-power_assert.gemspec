lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "petitest/power_assert/version"

Gem::Specification.new do |spec|
  spec.name = "petitest-power_assert"
  spec.version = Petitest::PowerAssert::VERSION
  spec.authors = ["Ryo Nakamura"]
  spec.email = ["r7kamura@gmail.com"]
  spec.summary = "Power Assert for Petitest"
  spec.homepage = "https://github.com/petitest/petitest-power_assert"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "power_assert"
  spec.add_dependency "petitest", ">= 0.2.0"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "petitest"
  spec.add_development_dependency "rake", "~> 10.0"
end

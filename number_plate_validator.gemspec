# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'number_plate_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "number_plate_validator"
  spec.version       = NumberPlateValidator::VERSION
  spec.authors       = ["Edgar"]
  spec.email         = ["zorro.ej@gmail.com"]

	spec.summary       = %q{This gem validates vehicle number/license plates. }
	spec.description   = %q{This gem allows you to validate a license plate number from a chosen country/region. It currently only supports Singapore}
  spec.homepage      = "https://github.com/ej2015/number_plate_validator.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

	spec.add_dependency "activesupport", "~>4.2"
	spec.add_dependency "activemodel", "~>4.2"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.7"
	spec.add_development_dependency "pry", "~>0.11"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "copperegg-rails"
  spec.version       = `cat #{File.dirname(__FILE__)}/VERSION`
  spec.authors       = ["Luca Bonmassar"]
  spec.email         = ["luca@gild.com"]
  spec.description   = %q{Copperegg probing for Rails}
  spec.summary       = %q{Add a controller to respond to copperegg inquiries}
  spec.homepage      = "http://www.gild.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

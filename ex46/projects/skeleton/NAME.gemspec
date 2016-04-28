# coding: utf-8
lib = File.expand_path('../lib', __File__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "NAME"
  spec.version       = '1.0'
  spec.authors       = ["Sebastian Petak"]
  spec.email         = ["sebastian.petak@gmail.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = $q{Longer description of your project.}
  spec.hompage       = "http://domainforproject.com/"
  spec.license       = "MIT"
  
  spec.files         = ['lib/NAME.rb']
  spec.executable    = ['bin/NAME']
  spec.test_files    = ['test/test_NAME.rb']
  spec.require_paths = ["lib"]
end

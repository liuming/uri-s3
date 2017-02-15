# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uri/s3/version'

Gem::Specification.new do |spec|
  spec.name          = "uri-s3"
  spec.version       = URI::S3::VERSION
  spec.authors       = ["Ming Liu"]
  spec.email         = ["liuming@lmws.net"]

  spec.summary       = %q{URI::S3 library}
  spec.homepage      = "https://github.com/liuming/uri-s3"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.5"
end

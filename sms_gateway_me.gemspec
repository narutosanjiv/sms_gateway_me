# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sms_gateway_me/version'

Gem::Specification.new do |spec|
  spec.name          = "sms_gateway_me"
  spec.version       = SmsGatewayMe::VERSION
  spec.authors       = ["Sanjiv Jha"]
  spec.email         = ["sanjiv@joshsoftware.com"]
  spec.summary       = %q{Api wrappers for sms smsgateway.me}
  spec.description   = %q{Api wrappers for sms smsgateway.me}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.5"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "webmock"
  

end

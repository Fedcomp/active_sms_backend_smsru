# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "active_sms/backend/smsru/version"

Gem::Specification.new do |spec|
  spec.name          = "active_sms-backend-smsru"
  spec.version       = ActiveSMS::Backend::SMSRU_VERSION
  spec.authors       = ["Fedcomp"]
  spec.email         = ["aglergen@gmail.com"]

  spec.summary       = "ActiveSMS backend for sms.ru service"
  spec.homepage      = "https://github.com/Fedcomp/active_sms-backend-smsru"
  spec.license       = "MIT"

  unless spec.respond_to?(:metadata)
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.files         = `git ls-files -z`
                       .split("\x0")
                       .reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "active_sms"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.1"

  spec.add_development_dependency "guard", "~> 2.14"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "pry-byebug", "~> 3.4"
  spec.add_development_dependency "rubocop"
end

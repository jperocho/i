# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i/version'

Gem::Specification.new do |spec|
  spec.name          = "i"
  spec.version       = I::VERSION
  spec.authors       = ["John Mark Perocho"]
  spec.email         = ["per.eight@gmail.com"]

  spec.summary       = %q{ Development Env Automation Tool }
  spec.description   = %q{ A Development Environment and Deployment Automation Tool Plugin for Vagrant }
  spec.homepage      = "https://github.com/jperocho/i.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = " Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end

lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)
require 'fauxhai/version'

Gem::Specification.new do |spec|
  spec.name          = 'fauxhai'
  spec.version       = Fauxhai::VERSION
  spec.authors       = ['Seth Vargo']
  spec.email         = ['sethvargo@gmail.com']
  spec.description   = 'Easily mock out ohai data'
  spec.summary       = 'Fauxhai provides an easy way to mock out your ohai data for testing with chefspec!'
  spec.homepage      = 'https://github.com/customink/fauxhai'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.2.2'

  spec.bindir        = "bin"
  spec.executables   = %w{fauxhai}
  spec.require_paths = ['lib']
  spec.files         = %w{LICENSE README.md Gemfile} + Dir.glob("*.gemspec") + Dir.glob("{examples,lib}/**/*")

  spec.add_runtime_dependency 'net-ssh'

  spec.add_development_dependency 'chef', '~> 12.0'
  spec.add_development_dependency 'ohai', '~> 8.5'
  spec.add_development_dependency 'rake'
end

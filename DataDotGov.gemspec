# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'DataDotGov/version'

Gem::Specification.new do |spec|
  spec.name          = 'DataDotGov'
  spec.version       = DataDotGov::VERSION
  spec.authors       = ['Colin Young']
  spec.email         = ['cyoung@moneythink.org']

  spec.summary       = 'Search and query the Data.gov CKAN APIs in Ruby'
  spec.description   = 'Search and query the Data.gov CKAN APIs in Ruby'
  spec.homepage      = 'https://github.com/moneythink/data.gov'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '~> 2.0'

  spec.add_dependency 'oj', '~> 2.15'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'vcr', '~> 3.0'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'dalli'
end

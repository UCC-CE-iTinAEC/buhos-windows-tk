# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serrano/version'

Gem::Specification.new do |s|
  s.name        = 'serrano'
  s.version     = Serrano::VERSION
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.1'
  s.date        = '2018-04-08'
  s.summary     = "Crossref Client"
  s.description = "Low Level Ruby Client for the Crossref Search API"
  s.authors     = "Scott Chamberlain"
  s.email       = 'myrmecocystus@gmail.com'
  s.homepage    = 'https://github.com/sckott/serrano'
  s.licenses    = 'MIT'

  s.files = `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  s.require_paths = ["lib"]

  s.bindir      = 'bin'
  s.executables = ['serrano']

  s.add_development_dependency 'bundler', '~> 1.16', '>= 1.16.1'
  s.add_development_dependency 'rake', '~> 12.3', '>= 12.3.1'
  s.add_development_dependency 'test-unit', '~> 3.2', '>= 3.2.7'
  s.add_development_dependency 'simplecov', '~> 0.16.1'
  s.add_development_dependency 'codecov', '~> 0.1.10'
  s.add_development_dependency 'json', '~> 2.1'
  s.add_development_dependency 'vcr', '~> 4.0'
  s.add_development_dependency 'webmock', '~> 3.3'

  s.add_runtime_dependency 'faraday', '~> 0.14.0'
  s.add_runtime_dependency 'faraday_middleware', '~> 0.12.2'
  s.add_runtime_dependency 'thor', '~> 0.20.0'
  s.add_runtime_dependency 'multi_json', '~> 1.13', '>= 1.13.1'
end

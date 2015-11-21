# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fb_graph_api/version'

Gem::Specification.new do |spec|
  spec.name          = "fb_graph_api"
  spec.version       = FbGraphApi::VERSION
  spec.authors       = ['Vishal Garg']
  spec.email         = ['vishalgarg231@gmail.com']
  
  spec.summary       = %q{Ruby facebook graph APIs}
  spec.description   = %q{Gem consolidate all the graph api's into one set to ease the usage'}
  spec.homepage      = "https://github.com/vishalgarg231/fb_graph_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor', '~> 0.19'
  spec.add_dependency 'faraday', '~> 0.9'
  spec.add_dependency 'faraday_middleware', '~> 0.9'
  spec.add_dependency 'recursive-open-struct', '~> 0.6'

  spec.add_development_dependency 'bundler', '~> 1.10.6'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'yard', '~> 0.8'
  spec.add_development_dependency 'rb-readline'
end

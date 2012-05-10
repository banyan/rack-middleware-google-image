# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rack-middleware-google-image/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kohei Hasegawa"]
  gem.email         = ["ameutau@gmail.com"]
  gem.description   = %q{rack middleware to response any image file via google search}
  gem.summary       = %q{rack middleware to response any image file via google search}
  gem.homepage      = "http://github.com/banyan/rack-middleware-google-image"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rack-middleware-google-image"
  gem.require_paths = ["lib"]
  gem.version       = Rack::Middleware::Google::Image::VERSION

  gem.add_runtime_dependency     "google_image_api"

  gem.add_development_dependency "rspec",     "~> 2.10.0"
  gem.add_development_dependency 'rake',      '>= 0.9.2.2'
  gem.add_development_dependency "rack",      '>= 1.3.5'
  gem.add_development_dependency 'rack-test', '>= 0.5.3'
end

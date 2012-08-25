# -*- encoding: utf-8 -*-
require File.expand_path('../lib/uuid_helper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel Blanco"]
  gem.email         = ["daniel.blancorojas@gmail.com"]
  gem.description   = %q{Helpers to use UUID with uuidtools}
  gem.summary       = %q{Extends some core classes to add a to_uuid method}
  gem.homepage      = "https://github.com/DanielBlanco/uuid_helper"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "uuid_helper"
  gem.require_paths = ["lib"]
  gem.version       = UuidHelper::VERSION

  gem.add_development_dependency "rspec"

  gem.add_runtime_dependency "uuidtools"
end

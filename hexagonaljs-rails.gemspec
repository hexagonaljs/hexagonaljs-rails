# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hexagonaljs-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "hexagonaljs-rails"
  gem.version       = Hexagonaljs::Rails::VERSION
  gem.authors       = ["Andrzej Krzywda", "Jan Filipowski"]
  gem.email         = ["andrzejkrzywda@gmail.com", "jachuf@gmail.com"]
  gem.description   = %q{hexagonaljs Rails generator}
  gem.summary       = %q{it generates the basic files needed for working with hexagonaljs-style Single Page Application inside your Rails app}
  gem.homepage      = "http://hexagonaljs.com"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

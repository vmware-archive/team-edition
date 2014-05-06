# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'team-edition/version'

Gem::Specification.new do |gem|
  gem.name          = "team-edition"
  gem.version       = Team::Edition::VERSION
  gem.authors       = ["Matthew Kocher"]
  gem.email         = ["kocher@gmail.com"]
  gem.description   = %q{This is an unsupperted hack to add a team to a list of tracker projects}
  gem.summary       = %q{It adds people to projects}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency "thor"
end

# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'psychic-nemesis-ninja/version'

Gem::Specification.new do |gem|
  gem.name          = "psychic-nemesis-ninja"
  gem.version       = Psychic::Nemesis::Ninja::VERSION
  gem.authors       = ["Christopher Valles"]
  gem.email         = ["christopher.valles@gree.net"]
  gem.description   = "A plugin to manage services like apache, mysq and memcached on vagrant machines"
  gem.summary       = "Plugin to manage stuff instide vagrant"
  gem.homepage      = "https://github.com/christophervalles/psychic-nemesis-ninja"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

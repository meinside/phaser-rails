# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phaser/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'phaser-rails'
  spec.version       = Phaser::Rails::VERSION
  spec.authors       = ['Sungjin Han']
  spec.email         = ['meinside@gmail.com']
  spec.summary       = %q{Phaser, HTML5 game framework for Rails}
  spec.description   = %q{Phaser(http://phaser.io), HTML5 game framework for Rails}
  spec.homepage      = 'https://github.com/meinside/phaser-rails'
  spec.license       = 'MIT'

  spec.files         = Dir["{lib,vendor}/**/*"] + ['README.md']
  spec.require_paths = ['lib']

  spec.add_dependency 'railties'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end

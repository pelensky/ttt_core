# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ttt_core/version'

Gem::Specification.new do |spec|
  spec.name          = "ttt_core"
  spec.version       = TttCore::VERSION
  spec.authors       = ["Dan Pelensky"]
  spec.email         = ["dan@pelensky.com"]

  spec.summary       = "Core Tic Tac Toe files to be used with a front end"
  spec.description   = "This is the core logic of a Tic Tac Toe game. Create a front end, and a human player (if required) and you are good to go."
  spec.homepage      = "https://github.com/pelensky/ttt_core"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

Gem::Specification.new do |spec|
  spec.name          = "lita-vader"
  spec.version       = "0.2.0"
  spec.authors       = ["Lee Jones", "Brian Pitts"]
  spec.description   = %q{Lita handler to tell you who a user's father is}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/lonelyplanet/lita-vader"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end

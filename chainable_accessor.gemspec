# frozen_string_literal: true

require_relative 'lib/chainable_accessor/version'

Gem::Specification.new do |spec|
  spec.name          = 'chainable_accessor'
  spec.version       = ChainableAccessor::VERSION
  spec.authors       = ['masarakki']
  spec.email         = ['masaki182@gmail.com']

  spec.summary       = 'generate method-chain style variable accessor.'
  spec.description   = 'generate method-chain style variable accessor.'
  spec.homepage      = 'https://github.com/masarakki/chainable_accessor'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.5.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/masarakki/chainable_accessor'
  spec.metadata['changelog_uri'] = 'https://github.com/masarakki/chainable_accessor/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end

# frozen_string_literal: true

require_relative "lib/relog/version"

Gem::Specification.new do |spec|
  spec.name = "relog_integration"
  spec.version = Relog::VERSION
  spec.authors = ["Emerson de Assis"]
  spec.email = ["emerson.silva@repassa.com.br"]

  spec.summary = "Com essa gem seu sistema pode deste enviar pedidos para o Bling até gerar nota fiscal de serviço"
  spec.description = "Gem responsável pela integração com os serviços do Bling"
  spec.homepage = "https://www.repassa.com.br"
  spec.license = "MIT"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://dev.azure.com/repassa/ReNova/_git/relog_integration"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.7.3'

  spec.add_dependency 'faraday', '~> 1.0.1'
  spec.add_dependency "nokogiri", ">= 1.11.5"
  spec.add_dependency "aws-sdk-sqs", ">= 1.0.0.rc11"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

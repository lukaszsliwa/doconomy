# frozen_string_literal: true

require_relative "lib/doconomy/version"

Gem::Specification.new do |spec|
  spec.name = "doconomy"
  spec.version = Doconomy::VERSION
  spec.authors = ["Łukasz Śliwa"]
  spec.email = ["lukasz.sliwa@gmail.com"]

  spec.summary = "Doconomy API Ruby Client"
  spec.description = "Doconomy gem provides easy way to configure and communicate with Doconomy API."
  spec.homepage = "https://github.com/lukaszsliwa/doconomy"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lukaszsliwa/doconomy"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'rake', '>= 13.0'
  spec.add_dependency 'rest-client', '>= 2.1.0'
  spec.add_dependency 'activesupport', '>= 4.0'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

# frozen_string_literal: true

require_relative "lib/unit_converter/version"

Gem::Specification.new do |spec|
  spec.name = "unit_converter"
  spec.version = UnitConverter::VERSION
  spec.authors = ["Ademar Neto"]
  spec.email = ["ademarnetodev@gmail.com"]

  spec.summary = "Aplicativo que Converte entre unidades de medida"
  spec.description = "Aplicativo que Converte entre unidades de medida"
  spec.homepage = "https://github.com/devAdemarNeto"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://github.com/devAdemarNeto"

  spec.metadata["homepage_uri"] = "https://github.com/devAdemarNeto"
  spec.metadata["source_code_uri"] = "https://github.com/devAdemarNeto"
  spec.metadata["changelog_uri"] = "https://github.com/devAdemarNeto"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

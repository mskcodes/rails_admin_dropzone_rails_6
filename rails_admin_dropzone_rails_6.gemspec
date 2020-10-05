require_relative 'lib/rails_admin_dropzone_rails_6/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_admin_dropzone_rails_6"
  spec.version       = RailsAdminDropzoneRails6::VERSION
  spec.authors       = ["Giuliano Crivelli"]
  spec.email         = ["giulianocrivelli@hotmail.com"]

  spec.summary       = "RailsAdmin dropzone.js for Rails 6"
  spec.description   = "Easy to use integration of drag&drop files upload via dropzone.js for RailsAdmin with improvements"
  spec.homepage      = "https://github.com/thefalked/rails_admin_dropzone_rails_6"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "simple_form", "~> 5.0.2"
  spec.add_dependency "dropzonejs-rails", "~> 0.8.5"
  spec.add_dependency 'jquery-rails', ['>= 3.0', '< 5']

  spec.add_development_dependency "rails", "~> 6.0.3", ">= 6.0.3.3"
  spec.add_development_dependency "bundler", "~> 2.1.4"
end

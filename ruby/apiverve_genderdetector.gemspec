# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_genderdetector"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Gender Detector API - Ruby Client"
  spec.description   = "Gender Detector is a gender prediction API that estimates the likely gender of a person from their name. Pass a first name and get back the predicted gender as JSON, ready for salutations, profile defaults, or audience analysis."
  spec.homepage      = "https://apiverve.com/marketplace/genderdetector?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/genderdetector-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/genderdetector"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end

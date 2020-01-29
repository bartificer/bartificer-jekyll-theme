# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-bartificer"
  spec.version       = "0.1.0"
  spec.authors       = ["Bart Busschots"]
  spec.email         = ["opensource@bartificer.net"]

  spec.summary       = "A Jekyll theme for Bartificer Creations open source projects."
  spec.homepage      = "https://github.com/bbusschots/bartificer-jeklly-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.0"
end

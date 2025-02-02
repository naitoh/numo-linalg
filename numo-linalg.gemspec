lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative "lib/numo/linalg/version"

Gem::Specification.new do |spec|
  spec.name          = "numo-linalg"
  spec.version       = Numo::Linalg::VERSION
  spec.authors       = ["Masahiro TANAKA","Makoto KISHIMOTO"]
  spec.email         = ["masa16.tanaka@gmail.com"]
  spec.description   = %q{Ruby/Numo Linear Algebra library with interface to BLAS/LAPACK.}
  spec.summary       = %q{Ruby/Numo Linear Algebra library with BLAS/LAPACK}
  spec.homepage      = "https://github.com/ruby-numo/numo-linalg"
  spec.license       = "BSD-3-Clause"

  spec.files         = `git ls-files Gemfile README.md Rakefile lib ext numo-linalg.gemspec spec`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/numo/linalg/blas/extconf.rb",
                        "ext/numo/linalg/lapack/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "numo-narray", ">= 0.9.0.7"
end

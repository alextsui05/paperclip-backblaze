
Gem::Specification.new do |spec|
  spec.name          = 'paperclip-backblaze'
  spec.version       = '0.21'
  spec.authors       = ['Alex Tsui', 'Winston Durand']
  spec.email         = ['alextsui05@gmail.com']

  spec.summary       = 'Paperclip storage adapter for Backblaze B2 Cloud.'
  spec.description   = 'Allows Paperclip attachments to be backed by Backblaze B2 Cloud storage as an alternative to AWS S3.'
  spec.homepage      = 'https://github.com/alextsui05/paperclip-backblaze'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'yard'
  spec.add_dependency 'httparty'

  spec.required_ruby_version = '>= 2.1.0'
end

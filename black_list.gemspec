# frozen_string_literal: true

require_relative 'lib/black_list/version'

Gem::Specification.new do |spec|
  spec.name = 'black_list'
  spec.version = BlackList::VERSION
  spec.authors = ['gildemberg-santos']
  spec.email = ['gildemberg.santos@gmail.com']

  spec.summary = ''
  spec.description = ''
  spec.homepage = ''
  spec.required_ruby_version = '>= 2.5.0'

  spec.metadata['allowed_push_host'] = ''

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end

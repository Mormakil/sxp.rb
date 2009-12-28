#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

GEMSPEC = Gem::Specification.new do |gem|
  gem.name               = 'sxp'
  gem.version            = '0.0.1'
  gem.date               = '2009-12-21'
  gem.homepage           = 'http://sxp.rubyforge.org/'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'A pure-Ruby implementation of the SXP data interchange format.'
  gem.description        = <<-EOF
    SXP is a data interchange format based on S-expressions, the simplest and
    most versatile known means of representing complex data structures such as
    lists, trees and graphs.
  EOF
  gem.rubyforge_project  = 'sxp'

  gem.authors            = ['Arto Bendiken']
  gem.email              = 'arto.bendiken@gmail.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS README README.md Rakefile UNLICENSE VERSION) + Dir.glob('bin/*.rb') + Dir.glob('lib/**/*.rb')
  gem.files             -= %w(README.md) # only for GitHub
  gem.bindir             = %q(bin)
  gem.executables        = %w(sxp2json sxp2rdf sxp2xml sxp2yaml)
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 1.8.2'
  gem.requirements               = []
  gem.add_development_dependency 'rspec', '>= 1.2.9'
  gem.add_development_dependency 'yard' , '>= 0.5.2'
  gem.post_install_message       = nil
end
# encoding: UTF-8

require 'rubygems'
require 'rdoc/task'
require 'rake/testtask'
require 'rubygems/package_task'

spec = Gem::Specification.new do |s|
  s.name       = "ruby-gtkhex"
  s.version    = "0.1.0"
  s.author     = "Guillaume Delugré"
  s.email      = "guillaume at security-labs dot org"
  s.homepage   = "http://code.google.com/p/ruby-gtkhex"
  s.platform   = Gem::Platform::RUBY
  
  s.summary    = "GTK hexadecimal editor widget for Ruby."
  s.description = <<DESC
  This is a hexadecimal editor widget for Ruby. Binded from GHex original widget.
DESC

  s.files             = FileList[
    'COPYING', "{lib,samples}/**/*",
  ].to_a

  s.require_path      = "lib"
  s.has_rdoc          = false
  s.requirements      = "gtk2"
  s.add_dependency 'gtk2'
end

task :default => [:package]

Gem::PackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

task :clean do
  %x{rm -rf pkg doc}
end

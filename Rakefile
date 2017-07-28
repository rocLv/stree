# -*- ruby -*-

require "rubygems"
require "hoe"
require 'rake/extensiontask'

# Hoe.plugin :compiler
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :inline
# Hoe.plugin :minitest
# Hoe.plugin :racc
# Hoe.plugin :rcov
# Hoe.plugin :txt

Hoe.spec 'stree' do
  developer('Aaron Patterson', 'aaron@tenderlovemaking.com')
  self.readme_file       = 'README.rdoc'
  self.extra_rdoc_files  = FileList['*.rdoc']
  # self.history_file      = 'CHANGELOG.rdoc'
  self.extra_dev_deps << ['rake-compiler', '>= 0']
  self.spec_extras       = { :extensions => ["ext/stree/extconf.rb"] }

  Rake::ExtensionTask.new('stree', spec) do |ext|
    ext.lib_dir = File.join('lib', 'stree')
  end

  license :MIT
end

Rake::Task[:test].prerequisites << :compile

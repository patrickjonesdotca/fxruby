require 'rubygems'
require 'hoe'

# FXRuby version number
PKG_VERSION = "1.6.19"

Hoe.new("FXRuby", PKG_VERSION) do |p|
  # ... project specific data ...
  p.blog_categories = %w{FXRuby}
  p.clean_globs = ["ext/fox16/Makefile", "ext/fox16/*.o", "ext/fox16/*.bundle", "ext/fox16/mkmf.log", "ext/fox16/conftest.dSYM"]
  p.developer("Lyle Johnson", "lyle@lylejohnson.name")
  p.extra_rdoc_files = ["rdoc-sources", File.join("rdoc-sources", "README.rdoc")]
  p.remote_rdoc_dir = "doc/api"
  p.spec_extras = {
    :description => "FXRuby is the Ruby binding to the FOX GUI toolkit.",
    :extensions => ["ext/fox16/extconf.rb"],
    :rdoc_options => ['--main', File.join('rdoc-sources', 'README.rdoc'), '--exclude', 'ext/fox16', '--exclude', %r{aliases|kwargs|missingdep|responder}],
    :require_paths => ['ext/fox16', 'lib'],
    :summary => "FXRuby is the Ruby binding to the FOX GUI toolkit."
  }
end

# ... project specific tasks ...

desc "Upload the DOAP file to the Web site"
task :doap => [:setversions] do
  system %{scp -Cq doap.rdf lyle@rubyforge.org:/var/www/gforge-projects/fxruby}
end

desc "Run SWIG to generate the wrapper files."
task :swig do
  cd "swig-interfaces"
  system %{touch dependencies}
  system %{make depend; make}
  cd ".."
end

require File.expand_path('../lib/cxml/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "cxml"
  s.version     = CXML::VERSION
  s.summary     = "Ruby library to work with cXML protocol"
  s.description = "Ruby library to work with cXML protocol"
  s.homepage    = "Project homepage"
  s.authors     = ["Project author name"]
  s.email       = ["Project author email"]
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec',     '~> 2.11'
  s.add_development_dependency 'simplecov', '~> 0.4'

  s.add_dependency 'nokogiri'
  s.add_dependency 'xmlsimple'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  s.require_paths = ["lib"]
end
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rest_client_logger/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rest-client-logger"
  s.version     = RestClientLogger::VERSION
  s.authors     = ["Jason Neylon"]
  s.email       = ["jason.neylon@uswitch.com"]
  s.homepage    = "http://github.com/uswitch/rest-client-logger"
  s.description   = %q{Adds logging of the RestClient requests to the Rails debug log}
  s.summary       = %q{Adds logging of the RestClient requests to the Rails debug log}

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "README.md"]

  s.add_dependency 'railties', '>= 3.1'
  s.add_dependency 'rest-client', '>= 1.6'
end

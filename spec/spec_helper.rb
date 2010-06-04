$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'musician_analytics'
require 'spec'
require 'spec/autorun'
require 'typhoeus_spec_cache'

Spec::Runner.configure do |config|
  config.include(Typhoeus::SpecCacheMacros::InstanceMethods)
  config.extend(Typhoeus::SpecCacheMacros::ClassMethods)
end

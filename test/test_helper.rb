require 'simplecov'
require 'simplecov-rcov'
if ENV['JENKINS'] == "true"
  SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
end 

# NOTE: Remove 'rails' because same issue is happened when run test on CI environment.
#    Ref. https://github.com/colszowka/simplecov/issues/82
#SimpleCov.start 'rails'
SimpleCov.start

require File.expand_path(File.dirname(__FILE__) + '/../../../test/test_helper')

ActiveSupport::TestCase.append_fixture_path File.expand_path('../fixtures', __FILE__)

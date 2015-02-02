require 'helper'
require 'sms_gateway_me'

class TestSmsGatewayMe < Minitest::Test
  
  def setup
    @config = SmsGatewayMe::Configuration.new
  end

  def test_configuration_object
    assert_instance_of SmsGatewayMe::Configuration, SmsGatewayMe.config 
  end

  def test_respond_to_setup
    assert SmsGatewayMe.respond_to?(:setup), true
  end

end
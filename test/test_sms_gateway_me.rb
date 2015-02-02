require 'helper'
require 'sms_gateway_me'
require 'byebug'

class TestSmsGatewayMe < Minitest::Test
  def setup
    @config = SmsGatewayMe::Configuration.new
  end

  def test_configuration_object
    assert_instance_of SmsGatewayMe::Configuration, SmsGatewayMe.config 
  end

end
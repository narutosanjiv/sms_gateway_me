require 'faraday'
require 'sms_gateway_me/version'
require 'sms_gateway_me/config'
require 'sms_gateway_me/base'
require 'sms_gateway_me/message'
require 'sms_gateway_me/contact'

module SmsGatewayMe
  # Your code goes here...
  
  class << self
    attr_writer :configuration
  end

  def self.config
    @configuration ||= Configuration.new
  end

  def self.setup
    yield config
  end

  class Configuration
    attr_accessor :email, :password, :device_id

    def initialize
      @email = @password = @device_id = nil
    end
  end  
end

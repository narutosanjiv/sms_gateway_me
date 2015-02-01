require "sms_gateway_me/version"
require "sms_gateway_me/message"

module SmsGatewayMe
  # Your code goes here...
  
  class << self
    attr_writer :configuration
  end

  def self.config
    @configuration ||= Configuration.new
  end

  def self.setup
    yield self
  end

  class Configuration
    attr_accessor :email, :password, :device_id

    def initialize
      @email = @password = @device_id = nil
    end
  end  
end

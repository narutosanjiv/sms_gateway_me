module SmsGatewayMe
  module Config
    def email
      SmsGatewayMe.config.email
    end

    def password
      SmsGatewayMe.config.password
    end

    def device_id
      SmsGatewayMe.config.device_id
    end
    
  end
end

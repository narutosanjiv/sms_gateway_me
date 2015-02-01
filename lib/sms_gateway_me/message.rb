
module SmsGatewayMe
  class Message
    attr_accessor :number
    def initialize(number)
      @number = number
    end

    def email
      SmsGatewayMe.config.email
    end

    def password
      SmsGatewayMe.config.password
    end

    def device_id
      SmsGatewayMe.config.device_id
    end

    def send(message)
      begin
        opts = {email: email, password: password, device: device_id, number: number, message: message}
        Faraday.get 'http://smsgateway.me/api/v3/messages/send', opts
      rescue Faraday::ConnectionFailed => e
        return {status: 'failed', message: 'Failed to Connection to server. Please check your network connection.'}
      rescue Exception => e
        return {status: 'failed', message: e.message}
      end
    end

    def list

    end
  end
end
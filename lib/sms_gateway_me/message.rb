
module SmsGatewayMe
  class Message

    attr_accessor :number
    MSG_URL = "http://smsgateway.me/api/v3/messages"
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
      url = MSG_URL + "/send"
      opts = {email: email, password: password, device: device_id, 
              number: number, message: message}
      request(url, opts) do|response|

      end
    end

    def request(url, opts)
      begin
        data = Faraday.get url, opts
        yield(data)
      rescue Faraday::ConnectionFailed => e
        yield({status: 'failed', message: 'Failed to Connection to server. Please check your network connection.'})
      rescue Exception => e
        yield({status: 'failed', message: e.message})
      end

    end

    def list
      url = MSG_URL
      opts = {email: email, password: password}
      request(url, opts) do|response|

      end
    end
  

  end
end
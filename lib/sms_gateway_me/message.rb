class NumberMissing < StandardError

end

module SmsGatewayMe
  class Message < SmsGatewayMe::Base
    include SmsGatewayMe::Config    

    attr_accessor :number
    MSG_URL = "http://smsgateway.me/api/v3/messages"
    def initialize(number)
      @number = number
    end

    def send(message)
      raise NumberMissing, "Please provide mobile number for sending msg." if number.blank
      url = MSG_URL + "/send"
      opts = {email: email, password: password, device: device_id, 
              number: number, message: message}
      request(url, opts) do|response|
        yield response
      end
    end

    def list(pageno: 1)
      url = MSG_URL
      opts = {email: email, password: password, page: pageno}
      request(url, opts) do|response|
        yield response
      end
    end
  
    def show(id)
      url = MSG_URL + "/view/#{id}"
      opts = {email: email, password: password, page: pageno}
      
      request(url, opts) do|response|
        yield response
      end
    end
  end
end

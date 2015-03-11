class NumberMissing < StandardError

end

module SmsGatewayMe
  class Contact < SmsGatewayMe::Base
    include SmsGatewayMe::Config 
        
    CONTACT_URL = "http://smsgateway.me/api/v3/contacts"
    
    def list(pageno: 1)
      url = CONTACT_URL
      opts = {email: email, password: password, page: pageno}
      request(url, opts) do|response|
        yield response
      end
     
    end
    
    def create(name, number)
      url = CONTACT_URL + "/create" 
      opts = {email: email, password: password, name: name, number: number}
      
      request(url, opts) do|response|
        yield response
      end

    end
  end
end 

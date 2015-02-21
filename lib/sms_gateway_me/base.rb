module SmsGatewayMe
  class Base
    def request(url, opts)
      begin
        data = Faraday.get url, opts
        yield(data)
      rescue Faraday::ConnectionFailed => e
        yield({success: 'false', message: 'Failed to Connection to server. Please check your network connection.', data: []})
      rescue Exception => e
        yield({success: 'false', message: e.message, data: []})
      end
    end
  end
end

module RestClient
  module RequestWithInstrumentation

    def execute(& block)
      ActiveSupport::Notifications.instrument('log.restclient', url: url, method: method, headers: headers) do
        super &block
      end
    end
  end
end
RestClient::Request.prepend(RestClient::RequestWithInstrumentation)

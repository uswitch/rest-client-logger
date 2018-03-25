module RestClient
  module RequestWithInstrumentation
    def execute(& block)
      ActiveSupport::Notifications.instrument('log.restclient', url: url, method: method, headers: headers, payload: payload.to_s) do
        super &block
      end
    end
  end

  RestClient::Request.prepend RequestWithInstrumentation
end

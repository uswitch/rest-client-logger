module RestClient
  class Request

    def execute_with_instrumentation(& block)
      ActiveSupport::Notifications.instrument('log.restclient', url: url, method: method, headers: headers) do
        execute_without_instrumentation &block
      end
    end

    alias_method_chain :execute, :instrumentation
  end
end
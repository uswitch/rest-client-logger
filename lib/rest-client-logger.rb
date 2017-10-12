module RestClientLogger
  class RestClientLoggerRailtee < ::Rails::Railtie
    config.after_initialize do
      require "rest_client_logger/rest_client_log_subscriber"
      require "rest_client/request"
    end
  end
end

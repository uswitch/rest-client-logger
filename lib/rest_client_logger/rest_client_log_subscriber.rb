class RestClientLogSubscriber < ActiveSupport::LogSubscriber
  def log(event)
    return unless logger.debug?
    method = (event.payload[:method] || "").upcase
    headers = event.payload[:headers] 
    name = 'RestClient %s (%.1fms)' % [method, event.duration]
    debug "  #{color(name, GREEN, true)}  #{color(event.payload[:url], BOLD, true)}  #{headers.inspect if headers.present?}"
  end
end

RestClientLogSubscriber.attach_to :restclient

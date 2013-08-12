require 'action_controller/log_subscriber'
require 'term/ansicolor'

module ActionController
  class LogSubscriber
    def unpermitted_parameters(event)
      unpermitted_keys = event.payload[:keys]
      debug Term::ANSIColor.yellow { "Unpermitted parameters: #{unpermitted_keys.join(", ")}" }
    end
  end
end

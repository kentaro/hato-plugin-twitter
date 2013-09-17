require 'hato/plugin'
require 'hato/plugin/twitter/version'

require 'erb'
require 'twitter'

module Hato
  module Plugin
    class Twitter < Base
      def notify(args)
        send_tweet(args)
      end

      protected

      def send_tweet(args)
        client = ::Twitter::REST::Client.new(
          consumer_key:        config.consumer_key,
          consumer_secret:     config.consumer_secret,
          access_token:        config.access_token,
          access_token_secret: config.access_token_secret,
        )
        message = render(config.message_template, args)
        client.update(message)
      end

      def render(template, args)
        erb = ERB.new(template)
        erb.result(binding).chomp
      end
    end
  end
end


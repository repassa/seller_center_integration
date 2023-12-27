# frozen_string_literal: true

module Relog
  class MessagingClient < Messaging::BaseClient
    def initialize(options = {})
      @options = options
    end

    def send_order(params)
      publish(params)
    end
  end
end

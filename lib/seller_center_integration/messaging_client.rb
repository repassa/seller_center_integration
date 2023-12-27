# frozen_string_literal: true

module SellerCenterIntegration
  class MessagingClient < Messaging::BaseClient
    def initialize(options = {})
      @options = options
    end

    def send_bag(params)
      publish(params)
    end
  end
end

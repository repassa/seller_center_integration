# frozen_string_literal: true

module SellerCenterIntegration
  class MessagingClient < Messaging::BaseClient
    def initialize(options = {})
      @options = options
    end

    def send_bags(params)
      publish(params)
    end
  end
end

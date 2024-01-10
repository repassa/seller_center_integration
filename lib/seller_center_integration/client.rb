# frozen_string_literal: true

module SellerCenterIntegration
  class Client
    def initialize(options = {})
      @options = options
      @service = get_service
    end

    private

    def get_service
      return http_client if @options.has_key?(:api_key)

      messaging_client
    end

    def messaging_client
      MessagingClient.new(@options)
    end

    def http_client
      HttpClient.new(@options)
    end
  end
end

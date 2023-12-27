# frozen_string_literal: true

module SellerCenterIntegration
  class HttpClient < Http::BaseClient
    attr_reader :base_url
    attr_accessor :response

    API_VERSION = 'v1'
    ENDPOINT    = 'https://seller_center_integration/api'

    private_constant :ENDPOINT, :API_VERSION

    def initialize(params)
      @base_url = "#{ENDPOINT}/#{API_VERSION}/"
    end

    def send_bag(params)
      'Sending a order via http has not yet been implemented...'
    end

    def default_request(resource, params: {}, http_method: :post, return_type: 'json')
      request(
        http_method: http_method,
        endpoint:    "#{resource}/#{return_type}",
        params:      params,
        headers:     required_headers(http_method)
      )
    end

    private

    def required_headers(http_method)
      content_type = 'application/x-www-form-urlencoded'
      content_type = 'application/json' if http_method.to_sym == :get

      {
        'Content-Type' => content_type
      }
    end
  end
end

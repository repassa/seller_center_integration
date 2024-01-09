# frozen_string_literal: true

module SellerCenterIntegration
  class HttpClient < Http::BaseClient
    attr_reader :base_url
    attr_accessor :response, :endpoint, :api_key

    def initialize(options)
      @base_url = options[:base_url]
      @endpoint = options[:endpoint]
      @api_key = options[:api_key]
    end

    def send_bags(params)
      headers = {
        'Ocp-Apim-Subscription-Key' => api_key
      }

      request(http_method: 'post', endpoint: endpoint, params: params.to_json, headers: headers)
    end

    def update_bag_payment_status(params)
      request(
        http_method: 'put',
        endpoint:    '/backoffice-integration-renova-ms/v1/bags-information/update-payment',
        params:      params.to_json,
        headers:     headers
      )
    end

    private

    def headers
      {
        'Authorization' => "Bearer #{api_key}"
      }
    end
  end
end

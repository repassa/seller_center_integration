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
      request(http_method: 'post', endpoint: endpoint, params: params.to_json, headers: headers)
    end

    def update_bag_payment_status(params)
      request(
        http_method: 'put',
        endpoint:    endpoint,
        params:      params.to_json,
        headers:     headers
      )
    end

    def update_bag_reproved_status(params)
      bag_id = params[:bag_id]
      payload = params[:payload]

      request(
        http_method: 'put',
        endpoint:    "#{endpoint}/#{bag_id}",
        params:      payload.to_json,
        headers:     headers
      )
    end

    def get_product_price_by_gender(params)
      request(
        http_method: 'get',
        endpoint: endpoint,
        params: params,
        headers: headers
      )
    end 

    private

    def headers
      {
        'Ocp-Apim-Subscription-Key' => api_key
      }
    end
  end
end

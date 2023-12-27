# frozen_string_literal: true

module SellerCenterIntegration
  module IntegrationPlatform
    class Client < SellerCenterIntegration::Client
      def initialize(options = {})
        super
      end

      def send_bag(params)
        @service.send_bag(params)
      end
    end
  end
end

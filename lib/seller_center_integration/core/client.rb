# frozen_string_literal: true

module SellerCenterIntegration
  module Core
    class Client < SellerCenterIntegration::Client
      def initialize(options = {})
        super
      end

      def send_bags(params)
        @service.send_bags(params)
      end
    end
  end
end

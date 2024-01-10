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

      def update_bag_payment_status(params)
        @service.update_bag_payment_status(params)
      end

      def update_bag_reproved_status(params)
        @service.update_bag_reproved_status(params)
      end
    end
  end
end

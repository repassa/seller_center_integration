# frozen_string_literal: true

module Relog
  module Tms
    class Client < Relog::Client
      def initialize(options = {})
        super
      end

      def send_order(params)
        @service.send_order(params)
      end
    end
  end
end

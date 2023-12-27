# frozen_string_literal: true

module Relog
  module Messaging
    class BaseClient
      def publish(params)
        sqs_client.send_message(
          queue_url:    @options[:queue_url],
          message_body: params.to_json
        )
      end

      private

      def sqs_client
        Aws::SQS::Client.new(
          region:      @options[:region],
          credentials: aws_credentials
        )
      end

      def aws_credentials
        Aws::Credentials.new(
          @options[:aws_access_key_id],
          @options[:aws_secret_access_key]
        )
      end
    end
  end
end

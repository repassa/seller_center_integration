# frozen_string_literal: true

require 'amazing_print'
require 'byebug'
require 'faraday'
require 'json'
require 'nokogiri'
require 'aws-sdk-sqs'

require_relative 'seller_center_integration/client'

require_relative 'seller_center_integration/http/base_client'
require_relative 'seller_center_integration/messaging/base_client'

require_relative 'seller_center_integration/integration_platform/client'

require_relative 'seller_center_integration/http_client'
require_relative 'seller_center_integration/messaging_client'

require_relative 'seller_center_integration/version'

module SellerCenterIntegration
  class Error < StandardError; end
  # Your code goes here...
end

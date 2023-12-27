# frozen_string_literal: true

require 'amazing_print'
require 'byebug'
require 'faraday'
require 'json'
require 'nokogiri'
require 'aws-sdk-sqs'

require_relative 'relog/client'

require_relative 'relog/http/base_client'
require_relative 'relog/messaging/base_client'

require_relative 'relog/integration_platform/client'
require_relative 'relog/tms/client'

require_relative 'relog/http_client'
require_relative 'relog/messaging_client'

require_relative 'relog/version'

module Relog
  class Error < StandardError; end
  # Your code goes here...
end

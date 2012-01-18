require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Readability < OmniAuth::Strategies::OAuth

      option :client_options, {
        :site => 'https://www.readability.com',
        :request_token_path => '/api/rest/v1/oauth/request_token/',
        :authorize_path     => '/api/rest/v1/oauth/authorize/',
        :access_token_path  => '/api/rest/v1/oauth/access_token/'
      }

      uid { user_info['username'] }

      private
      def user_info
        MultiJson.decode(access_token.get('https://www.readability.com/api/rest/v1/users/_current').body)
      end

    end
  end
end

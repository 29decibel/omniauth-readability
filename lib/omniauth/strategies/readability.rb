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

      info do
        {
          :name                    => user_info['username'],
          :first_name              => user_info['first_name'],
          :last_name               => user_info['last_name'],
          :date_joined             => user_info['date_joined'],
          :has_active_subscription => user_info['has_active_subscription'],
          :reading_limit           => user_info['reading_limit']
        }
      end

      private
      def user_info
        MultiJson.decode(access_token.get('https://www.readability.com/api/rest/v1/users/_current').body)
      end

    end
  end
end

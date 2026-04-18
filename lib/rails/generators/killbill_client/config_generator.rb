# frozen_string_literal: true

module KillBillClient
  class ConfigGenerator < Rails::Generators::Base
    desc 'Creates a configuration file at config/initializers/killbill_client.rb'

    # Creates a configuration file at <tt>config/initializers/killbill_client.rb</tt>
    # when running <tt>rails g killbill_client:config</tt>.
    def create_killbill_client_file
      create_file 'config/initializers/killbill_client.rb', <<~KILLBILL_CONFIG
        KillBillClient.url        = ENV['KILLBILL_URL']
        KillBillClient.api_key    = ENV['KILLBILL_API_KEY']
        KillBillClient.api_secret = ENV['KILLBILL_API_SECRET']

        # KillBillClient.default_currency = 'USD'
      KILLBILL_CONFIG
    end
  end
end

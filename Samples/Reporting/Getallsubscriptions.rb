# 34
# Code Generated: getAllSubscriptions[Get all subscriptions]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class Getallsubscriptions
    def run()
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ReportSubscriptionsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		Getallsubscriptions.new.run()
	end
end

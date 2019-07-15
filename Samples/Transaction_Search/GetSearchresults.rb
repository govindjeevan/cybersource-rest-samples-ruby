# 63
# Code Generated: getSearch[Get Search results]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class GetSearchresults
    def run(search_id)
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::SearchTransactionsApi.new(api_client, config)

        data, status_code, headers = api_instance.get_search( search_id )
        puts data, status_code, headers
        print("Input parameter searchId:")
        searchId = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		GetSearchresults.new.run(searchId)
	end
end

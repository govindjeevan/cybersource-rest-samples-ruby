# 39
# Code Generated: getNetFundingDetails[Get Netfunding information for an account or a merchant]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class GetNetfundinginformationforanaccountoramerchant
    def run()
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::NetFundingsApi.new(api_client, config)

        data, status_code, headers = api_instance.get_net_funding_details( )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
		GetNetfundinginformationforanaccountoramerchant.new.run()
	end
end

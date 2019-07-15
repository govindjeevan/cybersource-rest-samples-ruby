# 61
# Code Generated: getTransaction[Retrieve a Transaction]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class RetrieveaTransaction
    def run(id)
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::TransactionDetailsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers
        print("Input parameter id:")
        id = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		RetrieveaTransaction.new.run(id)
	end
end

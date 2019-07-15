# 27
# Code Generated: getTransactionBatches[Get a list of batch files]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class Getalistofbatchfiles
    def run()
    start_time = "2018-10-01T00:00:00.000Z"
    end_time = "2018-10-30T23:59:59.000Z"
    opts = {}

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::TransactionBatchesApi.new(api_client, config)

        data, status_code, headers = api_instance.get_transaction_batches( start_time, end_time )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
		Getalistofbatchfiles.new.run()
	end
end

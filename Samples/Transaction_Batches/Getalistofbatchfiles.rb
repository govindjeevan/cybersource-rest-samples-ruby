# 27
# Code Generated: getTransactionBatches[Get a list of batch files]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class Getalistofbatchfiles
    def run()
    startTime = "2018-10-01T00:00:00.000Z"
    endTime = "2018-10-30T23:59:59.000Z"
    opts = {}

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::TransactionBatchesApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		Getalistofbatchfiles.new.run()
	end
end

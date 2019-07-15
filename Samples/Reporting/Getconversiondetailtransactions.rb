# 38
# Code Generated: getConversionDetail[Get conversion detail transactions]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class Getconversiondetailtransactions
    def run()
    startTime = "2019-03-21T00:00:00.0Z"
    endTime = "2019-03-21T23:00:00.0Z"
    opts = {}

    opts[:"organizationId"] = "testrest"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ConversionDetailsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		Getconversiondetailtransactions.new.run()
	end
end

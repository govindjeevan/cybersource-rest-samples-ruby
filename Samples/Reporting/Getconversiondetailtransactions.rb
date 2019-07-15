# 38
# Code Generated: getConversionDetail[Get conversion detail transactions]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class Getconversiondetailtransactions
    def run()
    start_time = "2019-03-21T00:00:00.0Z"
    end_time = "2019-03-21T23:00:00.0Z"
    opts = {}

    opts[:"organization_id"] = "testrest"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ConversionDetailsApi.new(api_client, config)

        data, status_code, headers = api_instance.get_conversion_detail( start_time, end_time,opts )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
		Getconversiondetailtransactions.new.run()
	end
end

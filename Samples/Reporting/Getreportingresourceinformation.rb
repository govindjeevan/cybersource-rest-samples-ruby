# 33
# Code Generated: getResourceV2Info[Get reporting resource information]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class Getreportingresourceinformation
    def run()
    opts = {}

    opts[:"organization_id"] = "testrest"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ReportDefinitionsApi.new(api_client, config)

        data, status_code, headers = api_instance.get_resource_v2_info(opts )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
		Getreportingresourceinformation.new.run()
	end
end

# 35
# Code Generated: getSubscription[Get subscription for report name]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class Getsubscriptionforreportname
    def run(report_name)
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ReportSubscriptionsApi.new(api_client, config)

        data, status_code, headers = api_instance.get_subscription( report_name )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
        puts "Input parameter reportName:"
        reportName = gets.chomp
		Getsubscriptionforreportname.new.run(reportName)
	end
end

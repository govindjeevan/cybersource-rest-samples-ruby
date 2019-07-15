# 35
# Code Generated: getSubscription[Get subscription for report name]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class Getsubscriptionforreportname
	def run(reportName)
		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::ReportSubscriptionsApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers
		print("Input parameter reportName:")
		reportName = input()# 35
# Code Generated: getSubscription[Get subscription for report name]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class Getsubscriptionforreportname
    def run(reportName)
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ReportSubscriptionsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers
        print("Input parameter reportName:")
        reportName = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		Getsubscriptionforreportname.new.run(reportName)
	end
end

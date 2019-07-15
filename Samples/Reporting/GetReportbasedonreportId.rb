# 31
# Code Generated: getReportByReportId[Get Report based on reportId]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class GetReportbasedonreportId
	def run(reportId)
	opts = {}

	opts[:"organizationId"] = "testrest"
		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::ReportsApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers
		print("Input parameter reportId:")
		reportId = input()# 31
# Code Generated: getReportByReportId[Get Report based on reportId]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class GetReportbasedonreportId
    def run(reportId)
    opts = {}

    opts[:"organizationId"] = "testrest"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ReportsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers
        print("Input parameter reportId:")
        reportId = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		GetReportbasedonreportId.new.run(reportId)
	end
end

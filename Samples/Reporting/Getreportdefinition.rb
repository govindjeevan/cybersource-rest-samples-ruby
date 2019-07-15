# 32
# Code Generated: getResourceInfoByReportDefinition[Get report definition]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class Getreportdefinition
	def run(reportDefinitionName)
	opts = {}

	opts[:"organizationId"] = "testrest"
		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::ReportDefinitionsApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers
		print("Input parameter reportDefinitionName:")
		reportDefinitionName = input()# 32
# Code Generated: getResourceInfoByReportDefinition[Get report definition]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class Getreportdefinition
    def run(reportDefinitionName)
    opts = {}

    opts[:"organizationId"] = "testrest"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ReportDefinitionsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers
        print("Input parameter reportDefinitionName:")
        reportDefinitionName = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		Getreportdefinition.new.run(reportDefinitionName)
	end
end

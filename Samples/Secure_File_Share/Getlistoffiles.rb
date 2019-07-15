# 48
# Code Generated: getFileDetail[Get list of files]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class Getlistoffiles
	def run()
	startDate = "2018-10-20T00:00:00.000Z"
	endDate = "2018-10-30T00:00:00.000Z"
	opts = {}

	opts[:"organizationId"] = "testrest"
		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::SecureFileShareApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers# 48
# Code Generated: getFileDetail[Get list of files]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class Getlistoffiles
    def run()
    startDate = "2018-10-20T00:00:00.000Z"
    endDate = "2018-10-30T00:00:00.000Z"
    opts = {}

    opts[:"organizationId"] = "testrest"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::SecureFileShareApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		Getlistoffiles.new.run()
	end
end

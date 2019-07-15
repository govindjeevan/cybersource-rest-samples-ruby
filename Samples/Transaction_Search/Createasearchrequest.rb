# 62
# Code Generated: createSearch[Create a search request]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class Createasearchrequest
    def run()
        requestObj = CyberSource::CreateSearchRequest.new
        requestObj.save = False
        requestObj.name = "MRN"
        requestObj.timezone = "America/Chicago"
        requestObj.query = "clientReferenceInformation.code:TC50171_3 AND submitTimeUtc:[NOW/DAY-7DAYS TO NOW/DAY+1DAY}"
        requestObj.offset = 0
        requestObj.limit = 100
        requestObj.sort = "id:asc,submitTimeUtc:asc"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::SearchTransactionsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		Createasearchrequest.new.run()
	end
end

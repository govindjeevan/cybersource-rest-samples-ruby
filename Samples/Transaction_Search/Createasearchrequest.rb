# 62
# Code Generated: createSearch[Create a search request]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class Createasearchrequest
    def run()
        request_obj = CyberSource::CreateSearchRequest.new
        request_obj.save = FALSE
        request_obj.name = "MRN"
        request_obj.timezone = "America/Chicago"
        request_obj.query = "clientReferenceInformation.code:TC50171_3 AND submitTimeUtc:[NOW/DAY-7DAYS TO NOW/DAY+1DAY}"
        request_obj.offset = 0
        request_obj.limit = 100
        request_obj.sort = "id:asc,submitTimeUtc:asc"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::SearchTransactionsApi.new(api_client, config)

        data, status_code, headers = api_instance.create_search( request_obj )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
		Createasearchrequest.new.run()
	end
end

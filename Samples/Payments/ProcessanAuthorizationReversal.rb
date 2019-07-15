# 17
# Code Generated: authReversal[Process an Authorization Reversal]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class ProcessanAuthorizationReversal
    def run(id)
        requestObj = CyberSource::AuthReversalRequest.new
        client_reference_information = CyberSource::Ptsv2paymentsidreversalsClientReferenceInformation.new
        client_reference_information.code = "TC50171_3"
        requestObj.client_reference_information = client_reference_information

        reversal_information = CyberSource::Ptsv2paymentsidreversalsReversalInformation.new
        amount_details = CyberSource::Ptsv2paymentsidreversalsReversalInformationAmountDetails.new
        amount_details.total_amount = "102.21"
        reversal_information.amount_details = amount_details
        reversal_information.reason = "testing"
        requestObj.reversal_information = reversal_information

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ReversalApi.new(api_client, config)

        data, status_code, headers = api_instance.auth_reversal( id, requestObj )
        puts data, status_code, headers
        print("Input parameter id:")
        id = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		ProcessanAuthorizationReversal.new.run(id)
	end
end

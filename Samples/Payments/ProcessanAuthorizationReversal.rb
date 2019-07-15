# 17
# Code Generated: authReversal[Process an Authorization Reversal]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class ProcessanAuthorizationReversal
    def run(id)
        requestObj = CyberSource::AuthReversalRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsidreversalsClientReferenceInformation.new
        clientReferenceInformation.code = "TC50171_3"
        requestObj.clientReferenceInformation = clientReferenceInformation

        reversalInformation = CyberSource::Ptsv2paymentsidreversalsReversalInformation.new
        amountDetails = CyberSource::Ptsv2paymentsidreversalsReversalInformationAmountDetails.new
        amountDetails.totalAmount = "102.21"
        reversalInformation.amountDetails = amountDetails
        reversalInformation.reason = "testing"
        requestObj.reversalInformation = reversalInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ReversalApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
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

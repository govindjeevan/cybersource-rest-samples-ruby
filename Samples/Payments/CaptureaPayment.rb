# 19
# Code Generated: capturePayment[Capture a Payment]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class CaptureaPayment
    def run(id)
        requestObj = CyberSource::CapturePaymentRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "TC50171_3"
        requestObj.clientReferenceInformation = clientReferenceInformation

        orderInformation = CyberSource::Ptsv2paymentsidcapturesOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsidcapturesOrderInformationAmountDetails.new
        amountDetails.totalAmount = "102.21"
        amountDetails.currency = "USD"
        orderInformation.amountDetails = amountDetails
        requestObj.orderInformation = orderInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::CaptureApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers
        print("Input parameter id:")
        id = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		CaptureaPayment.new.run(id)
	end
end

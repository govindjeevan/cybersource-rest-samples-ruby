# 20
# Code Generated: refundPayment[Refund a Payment]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class RefundaPayment
    def run(id)
        requestObj = CyberSource::RefundPaymentRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "TC50171_3"
        requestObj.clientReferenceInformation = clientReferenceInformation

        orderInformation = CyberSource::Ptsv2paymentsidrefundsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsidcapturesOrderInformationAmountDetails.new
        amountDetails.totalAmount = "10"
        amountDetails.currency = "USD"
        orderInformation.amountDetails = amountDetails
        requestObj.orderInformation = orderInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::RefundApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers
        print("Input parameter id:")
        id = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		RefundaPayment.new.run(id)
	end
end

# 20
# Code Generated: refundPayment[Refund a Payment]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class RefundaPayment
    def run(id)
        requestObj = CyberSource::RefundPaymentRequest.new
        client_reference_information = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        client_reference_information.code = "TC50171_3"
        requestObj.client_reference_information = client_reference_information

        order_information = CyberSource::Ptsv2paymentsidrefundsOrderInformation.new
        amount_details = CyberSource::Ptsv2paymentsidcapturesOrderInformationAmountDetails.new
        amount_details.total_amount = "10"
        amount_details.currency = "USD"
        order_information.amount_details = amount_details
        requestObj.order_information = order_information

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::RefundApi.new(api_client, config)

        data, status_code, headers = api_instance.refund_payment( requestObj, id )
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

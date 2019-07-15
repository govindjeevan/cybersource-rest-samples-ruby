# 22
# Code Generated: createCredit[Service Fees Credit]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class ServiceFeesCredit
    def run()
        requestObj = CyberSource::CreateCreditRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "12345678"
        requestObj.clientReferenceInformation = clientReferenceInformation

        paymentInformation = CyberSource::Ptsv2paymentsidrefundsPaymentInformation.new
        card = CyberSource::Ptsv2paymentsidrefundsPaymentInformationCard.new
        card.number = "4111111111111111"
        card.expirationMonth = "03"
        card.expirationYear = "2031"
        paymentInformation.card = card
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Ptsv2paymentsidrefundsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsidcapturesOrderInformationAmountDetails.new
        amountDetails.totalAmount = "2325.00"
        amountDetails.currency = "usd"
        amountDetails.serviceFeeAmount = "30.0"
        orderInformation.amountDetails = amountDetails
        billTo = CyberSource::Ptsv2paymentsidcapturesOrderInformationBillTo.new
        billTo.firstName = "John"
        billTo.lastName = "Doe"
        billTo.address1 = "1 Market St"
        billTo.locality = "san francisco"
        billTo.administrativeArea = "CA"
        billTo.postalCode = "94105"
        billTo.country = "US"
        billTo.email = "test@cybs.com"
        billTo.phoneNumber = "4158880000"
        orderInformation.billTo = billTo
        requestObj.orderInformation = orderInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::CreditApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		ServiceFeesCredit.new.run()
	end
end

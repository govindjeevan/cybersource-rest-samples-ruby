# 24
# Code Generated: createCredit[Credit]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class Credit
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
        card.type = "001"
        paymentInformation.card = card
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Ptsv2paymentsidrefundsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsidcapturesOrderInformationAmountDetails.new
        amountDetails.totalAmount = "200"
        amountDetails.currency = "usd"
        orderInformation.amountDetails = amountDetails
        billTo = CyberSource::Ptsv2paymentsidcapturesOrderInformationBillTo.new
        billTo.firstName = "John"
        billTo.lastName = "Deo"
        billTo.address1 = "900 Metro Center Blvd"
        billTo.locality = "Foster City"
        billTo.administrativeArea = "CA"
        billTo.postalCode = "48104-2201"
        billTo.country = "US"
        billTo.email = "test@cybs.com"
        billTo.phoneNumber = "9321499232"
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
		Credit.new.run()
	end
end

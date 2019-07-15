# 11
# Code Generated: createPayment[Digital Payment - GooglePay]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class DigitalPaymentGooglePay
    def run()
        requestObj = CyberSource::CreatePaymentRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "TC_1231223"
        requestObj.clientReferenceInformation = clientReferenceInformation

        processingInformation = CyberSource::Ptsv2paymentsProcessingInformation.new
        processingInformation.capture = False
        processingInformation.commerceIndicator = "internet"
        processingInformation.paymentSolution = "012"
        requestObj.processingInformation = processingInformation

        paymentInformation = CyberSource::Ptsv2paymentsPaymentInformation.new
        tokenizedCard = CyberSource::Ptsv2paymentsPaymentInformationTokenizedCard.new
        tokenizedCard.number = "4111111111111111"
        tokenizedCard.expirationMonth = "12"
        tokenizedCard.expirationYear = "2020"
        tokenizedCard.cryptogram = "EHuWW9PiBkWvqE5juRwDzAUFBAk="
        tokenizedCard.transactionType = "1"
        paymentInformation.tokenizedCard = tokenizedCard
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Ptsv2paymentsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
        amountDetails.totalAmount = "20"
        amountDetails.currency = "USD"
        orderInformation.amountDetails = amountDetails
        billTo = CyberSource::Ptsv2paymentsOrderInformationBillTo.new
        billTo.firstName = "John"
        billTo.lastName = "Deo"
        billTo.address1 = "901 Metro Center Blvd"
        billTo.locality = "Foster City"
        billTo.administrativeArea = "CA"
        billTo.postalCode = "94404"
        billTo.country = "US"
        billTo.email = "test@cybs.com"
        billTo.phoneNumber = "6504327113"
        orderInformation.billTo = billTo
        requestObj.orderInformation = orderInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::PaymentsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		DigitalPaymentGooglePay.new.run()
	end
end

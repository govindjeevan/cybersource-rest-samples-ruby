# 7
# Code Generated: createPayment[Level II Data]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class LevelIIData
    def run()
        requestObj = CyberSource::CreatePaymentRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "TC50171_12"
        requestObj.clientReferenceInformation = clientReferenceInformation

        processingInformation = CyberSource::Ptsv2paymentsProcessingInformation.new
        processingInformation.capture = False
        processingInformation.commerceIndicator = "internet"
        requestObj.processingInformation = processingInformation

        paymentInformation = CyberSource::Ptsv2paymentsPaymentInformation.new
        card = CyberSource::Ptsv2paymentsPaymentInformationCard.new
        card.number = "4111111111111111"
        card.expirationMonth = "12"
        card.expirationYear = "2031"
        card.type = "001"
        card.securityCode = "123"
        paymentInformation.card = card
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Ptsv2paymentsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
        amountDetails.totalAmount = "112.00"
        amountDetails.currency = "USD"
        orderInformation.amountDetails = amountDetails
        billTo = CyberSource::Ptsv2paymentsOrderInformationBillTo.new
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
        invoiceDetails = CyberSource::Ptsv2paymentsOrderInformationInvoiceDetails.new
        invoiceDetails.purchaseOrderNumber = "LevelII Auth Po"
        orderInformation.invoiceDetails = invoiceDetails
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
		LevelIIData.new.run()
	end
end

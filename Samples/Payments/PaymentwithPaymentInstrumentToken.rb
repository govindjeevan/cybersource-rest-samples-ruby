# 13
# Code Generated: createPayment[Payment with Payment Instrument Token]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class PaymentwithPaymentInstrumentToken
    def run()
        requestObj = CyberSource::CreatePaymentRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "TC50171_3"
        requestObj.clientReferenceInformation = clientReferenceInformation

        processingInformation = CyberSource::Ptsv2paymentsProcessingInformation.new
        processingInformation.capture = False
        processingInformation.commerceIndicator = "internet"
        requestObj.processingInformation = processingInformation

        paymentInformation = CyberSource::Ptsv2paymentsPaymentInformation.new
        customer = CyberSource::Ptsv2paymentsPaymentInformationCustomer.new
        customer.customerId = "7500BB199B4270EFE05340588D0AFCAD"
        paymentInformation.customer = customer
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Ptsv2paymentsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
        amountDetails.totalAmount = "22"
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
		PaymentwithPaymentInstrumentToken.new.run()
	end
end

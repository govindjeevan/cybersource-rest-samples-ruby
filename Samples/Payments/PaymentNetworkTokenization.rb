# 12
# Code Generated: createPayment[Payment Network Tokenization]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class PaymentNetworkTokenization
	def run()
		requestObj = CyberSource::CreatePaymentRequest.new
		clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
		clientReferenceInformation.code = "TC_123122"
		requestObj.clientReferenceInformation = clientReferenceInformation

		processingInformation = CyberSource::Ptsv2paymentsProcessingInformation.new
		processingInformation.capture = False
		processingInformation.commerceIndicator = "internet"
		requestObj.processingInformation = processingInformation

		paymentInformation = CyberSource::Ptsv2paymentsPaymentInformation.new
		tokenizedCard = CyberSource::Ptsv2paymentsPaymentInformationTokenizedCard.new
		tokenizedCard.number = "4111111111111111"
		tokenizedCard.expirationMonth = "12"
		tokenizedCard.expirationYear = "2031"
		tokenizedCard.transactionType = "1"
		paymentInformation.tokenizedCard = tokenizedCard
		requestObj.paymentInformation = paymentInformation

		orderInformation = CyberSource::Ptsv2paymentsOrderInformation.new
		amountDetails = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
		amountDetails.totalAmount = "100"
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

		consumerAuthenticationInformation = CyberSource::Ptsv2paymentsConsumerAuthenticationInformation.new
		consumerAuthenticationInformation.cavv = "AAABCSIIAAAAAAACcwgAEMCoNh+="
		consumerAuthenticationInformation.xid = "T1Y0OVcxMVJJdkI0WFlBcXptUzE="
		requestObj.consumerAuthenticationInformation = consumerAuthenticationInformation

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::PaymentsApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers# 12
# Code Generated: createPayment[Payment Network Tokenization]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class PaymentNetworkTokenization
    def run()
        requestObj = CyberSource::CreatePaymentRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "TC_123122"
        requestObj.clientReferenceInformation = clientReferenceInformation

        processingInformation = CyberSource::Ptsv2paymentsProcessingInformation.new
        processingInformation.capture = False
        processingInformation.commerceIndicator = "internet"
        requestObj.processingInformation = processingInformation

        paymentInformation = CyberSource::Ptsv2paymentsPaymentInformation.new
        tokenizedCard = CyberSource::Ptsv2paymentsPaymentInformationTokenizedCard.new
        tokenizedCard.number = "4111111111111111"
        tokenizedCard.expirationMonth = "12"
        tokenizedCard.expirationYear = "2031"
        tokenizedCard.transactionType = "1"
        paymentInformation.tokenizedCard = tokenizedCard
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Ptsv2paymentsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
        amountDetails.totalAmount = "100"
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

        consumerAuthenticationInformation = CyberSource::Ptsv2paymentsConsumerAuthenticationInformation.new
        consumerAuthenticationInformation.cavv = "AAABCSIIAAAAAAACcwgAEMCoNh+="
        consumerAuthenticationInformation.xid = "T1Y0OVcxMVJJdkI0WFlBcXptUzE="
        requestObj.consumerAuthenticationInformation = consumerAuthenticationInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::PaymentsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		PaymentNetworkTokenization.new.run()
	end
end

# 14
# Code Generated: createPayment[Simple Authorization(Retail)]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class SimpleAuthorizationRetail
	def run()
		requestObj = CyberSource::CreatePaymentRequest.new
		clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
		clientReferenceInformation.code = "TC50171_8"
		requestObj.clientReferenceInformation = clientReferenceInformation

		processingInformation = CyberSource::Ptsv2paymentsProcessingInformation.new
		processingInformation.capture = False
		processingInformation.commerceIndicator = "retail"
		requestObj.processingInformation = processingInformation

		paymentInformation = CyberSource::Ptsv2paymentsPaymentInformation.new
		card = CyberSource::Ptsv2paymentsPaymentInformationCard.new
		card.number = "5555555555554444"
		card.expirationMonth = "12"
		card.expirationYear = "2031"
		card.type = "002"
		card.securityCode = "123"
		paymentInformation.card = card
		requestObj.paymentInformation = paymentInformation

		orderInformation = CyberSource::Ptsv2paymentsOrderInformation.new
		amountDetails = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
		amountDetails.totalAmount = "108.00"
		amountDetails.currency = "USD"
		orderInformation.amountDetails = amountDetails
		billTo = CyberSource::Ptsv2paymentsOrderInformationBillTo.new
		billTo.firstName = "John"
		billTo.lastName = "Doe"
		billTo.address1 = "1 Market St"
		billTo.address2 = "Address 2"
		billTo.locality = "san francisco"
		billTo.administrativeArea = "CA"
		billTo.postalCode = "94105"
		billTo.country = "US"
		billTo.email = "test@cybs.com"
		billTo.phoneNumber = "4158880000"
		orderInformation.billTo = billTo
		requestObj.orderInformation = orderInformation

		pointOfSaleInformation = CyberSource::Ptsv2paymentsPointOfSaleInformation.new
		pointOfSaleInformation.terminalId = "001"
		pointOfSaleInformation.entryMode = "keyed"
		pointOfSaleInformation.terminalCapability = 2
		requestObj.pointOfSaleInformation = pointOfSaleInformation

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::PaymentsApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers# 14
# Code Generated: createPayment[Simple Authorization(Retail)]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class SimpleAuthorizationRetail
    def run()
        requestObj = CyberSource::CreatePaymentRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "TC50171_8"
        requestObj.clientReferenceInformation = clientReferenceInformation

        processingInformation = CyberSource::Ptsv2paymentsProcessingInformation.new
        processingInformation.capture = False
        processingInformation.commerceIndicator = "retail"
        requestObj.processingInformation = processingInformation

        paymentInformation = CyberSource::Ptsv2paymentsPaymentInformation.new
        card = CyberSource::Ptsv2paymentsPaymentInformationCard.new
        card.number = "5555555555554444"
        card.expirationMonth = "12"
        card.expirationYear = "2031"
        card.type = "002"
        card.securityCode = "123"
        paymentInformation.card = card
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Ptsv2paymentsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
        amountDetails.totalAmount = "108.00"
        amountDetails.currency = "USD"
        orderInformation.amountDetails = amountDetails
        billTo = CyberSource::Ptsv2paymentsOrderInformationBillTo.new
        billTo.firstName = "John"
        billTo.lastName = "Doe"
        billTo.address1 = "1 Market St"
        billTo.address2 = "Address 2"
        billTo.locality = "san francisco"
        billTo.administrativeArea = "CA"
        billTo.postalCode = "94105"
        billTo.country = "US"
        billTo.email = "test@cybs.com"
        billTo.phoneNumber = "4158880000"
        orderInformation.billTo = billTo
        requestObj.orderInformation = orderInformation

        pointOfSaleInformation = CyberSource::Ptsv2paymentsPointOfSaleInformation.new
        pointOfSaleInformation.terminalId = "001"
        pointOfSaleInformation.entryMode = "keyed"
        pointOfSaleInformation.terminalCapability = 2
        requestObj.pointOfSaleInformation = pointOfSaleInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::PaymentsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		SimpleAuthorizationRetail.new.run()
	end
end

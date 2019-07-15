# 30
# Code Generated: octCreatePayment[Payout (Card not Token)]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class PayoutCardnotToken
	def run()
		requestObj = CyberSource::OctCreatePaymentRequest.new
		clientReferenceInformation = CyberSource::Ptsv2payoutsClientReferenceInformation.new
		clientReferenceInformation.code = "33557799"
		requestObj.clientReferenceInformation = clientReferenceInformation

		orderInformation = CyberSource::Ptsv2payoutsOrderInformation.new
		amountDetails = CyberSource::Ptsv2payoutsOrderInformationAmountDetails.new
		amountDetails.totalAmount = "100.00"
		amountDetails.currency = "USD"
		orderInformation.amountDetails = amountDetails
		requestObj.orderInformation = orderInformation

		merchantInformation = CyberSource::Ptsv2payoutsMerchantInformation.new
		merchantDescriptor = CyberSource::Ptsv2payoutsMerchantInformationMerchantDescriptor.new
		merchantDescriptor.name = "Sending Company Name"
		merchantDescriptor.locality = "FC"
		merchantDescriptor.country = "US"
		merchantDescriptor.administrativeArea = "CA"
		merchantDescriptor.postalCode = "94440"
		merchantInformation.merchantDescriptor = merchantDescriptor
		requestObj.merchantInformation = merchantInformation

		recipientInformation = CyberSource::Ptsv2payoutsRecipientInformation.new
		recipientInformation.firstName = "John"
		recipientInformation.lastName = "Doe"
		recipientInformation.address1 = "Paseo Padre Boulevard"
		recipientInformation.locality = "Foster City"
		recipientInformation.administrativeArea = "CA"
		recipientInformation.country = "US"
		recipientInformation.postalCode = "94400"
		recipientInformation.phoneNumber = "6504320556"
		requestObj.recipientInformation = recipientInformation

		senderInformation = CyberSource::Ptsv2payoutsSenderInformation.new
		senderInformation.referenceNumber = "1234567890"
		account = CyberSource::Ptsv2payoutsSenderInformationAccount.new
		account.fundsSource = "05"
		senderInformation.account = account
		senderInformation.name = "Company Name"
		senderInformation.address1 = "900 Metro Center Blvd.900"
		senderInformation.locality = "Foster City"
		senderInformation.administrativeArea = "CA"
		senderInformation.countryCode = "US"
		requestObj.senderInformation = senderInformation

		processingInformation = CyberSource::Ptsv2payoutsProcessingInformation.new
		processingInformation.businessApplicationId = "FD"
		processingInformation.networkRoutingOrder = "V8"
		processingInformation.commerceIndicator = "internet"
		requestObj.processingInformation = processingInformation

		paymentInformation = CyberSource::Ptsv2payoutsPaymentInformation.new
		card = CyberSource::Ptsv2payoutsPaymentInformationCard.new
		card.type = "001"
		card.number = "4111111111111111"
		card.expirationMonth = "12"
		card.expirationYear = "2025"
		paymentInformation.card = card
		requestObj.paymentInformation = paymentInformation

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::PayoutsApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers# 30
# Code Generated: octCreatePayment[Payout (Card not Token)]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class PayoutCardnotToken
    def run()
        requestObj = CyberSource::OctCreatePaymentRequest.new
        clientReferenceInformation = CyberSource::Ptsv2payoutsClientReferenceInformation.new
        clientReferenceInformation.code = "33557799"
        requestObj.clientReferenceInformation = clientReferenceInformation

        orderInformation = CyberSource::Ptsv2payoutsOrderInformation.new
        amountDetails = CyberSource::Ptsv2payoutsOrderInformationAmountDetails.new
        amountDetails.totalAmount = "100.00"
        amountDetails.currency = "USD"
        orderInformation.amountDetails = amountDetails
        requestObj.orderInformation = orderInformation

        merchantInformation = CyberSource::Ptsv2payoutsMerchantInformation.new
        merchantDescriptor = CyberSource::Ptsv2payoutsMerchantInformationMerchantDescriptor.new
        merchantDescriptor.name = "Sending Company Name"
        merchantDescriptor.locality = "FC"
        merchantDescriptor.country = "US"
        merchantDescriptor.administrativeArea = "CA"
        merchantDescriptor.postalCode = "94440"
        merchantInformation.merchantDescriptor = merchantDescriptor
        requestObj.merchantInformation = merchantInformation

        recipientInformation = CyberSource::Ptsv2payoutsRecipientInformation.new
        recipientInformation.firstName = "John"
        recipientInformation.lastName = "Doe"
        recipientInformation.address1 = "Paseo Padre Boulevard"
        recipientInformation.locality = "Foster City"
        recipientInformation.administrativeArea = "CA"
        recipientInformation.country = "US"
        recipientInformation.postalCode = "94400"
        recipientInformation.phoneNumber = "6504320556"
        requestObj.recipientInformation = recipientInformation

        senderInformation = CyberSource::Ptsv2payoutsSenderInformation.new
        senderInformation.referenceNumber = "1234567890"
        account = CyberSource::Ptsv2payoutsSenderInformationAccount.new
        account.fundsSource = "05"
        senderInformation.account = account
        senderInformation.name = "Company Name"
        senderInformation.address1 = "900 Metro Center Blvd.900"
        senderInformation.locality = "Foster City"
        senderInformation.administrativeArea = "CA"
        senderInformation.countryCode = "US"
        requestObj.senderInformation = senderInformation

        processingInformation = CyberSource::Ptsv2payoutsProcessingInformation.new
        processingInformation.businessApplicationId = "FD"
        processingInformation.networkRoutingOrder = "V8"
        processingInformation.commerceIndicator = "internet"
        requestObj.processingInformation = processingInformation

        paymentInformation = CyberSource::Ptsv2payoutsPaymentInformation.new
        card = CyberSource::Ptsv2payoutsPaymentInformationCard.new
        card.type = "001"
        card.number = "4111111111111111"
        card.expirationMonth = "12"
        card.expirationYear = "2025"
        paymentInformation.card = card
        requestObj.paymentInformation = paymentInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::PayoutsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		PayoutCardnotToken.new.run()
	end
end

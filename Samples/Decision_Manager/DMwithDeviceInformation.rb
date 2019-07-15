# 46
# Code Generated: createDecisionManagerCase[DM with Device Information]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class DMwithDeviceInformation
	def run()
		requestObj = CyberSource::CreateDecisionManagerCaseRequest.new
		clientReferenceInformation = CyberSource::Riskv1decisionsClientReferenceInformation.new
		clientReferenceInformation.code = "54323007"
		requestObj.clientReferenceInformation = clientReferenceInformation

		paymentInformation = CyberSource::Riskv1decisionsPaymentInformation.new
		card = CyberSource::Riskv1decisionsPaymentInformationCard.new
		card.number = "4444444444444448"
		card.expirationMonth = "12"
		card.expirationYear = "2020"
		paymentInformation.card = card
		requestObj.paymentInformation = paymentInformation

		orderInformation = CyberSource::Riskv1decisionsOrderInformation.new
		amountDetails = CyberSource::Riskv1decisionsOrderInformationAmountDetails.new
		amountDetails.currency = "USD"
		amountDetails.totalAmount = "144.14"
		orderInformation.amountDetails = amountDetails
		billTo = CyberSource::Riskv1decisionsOrderInformationBillTo.new
		billTo.address1 = "96, powers street"
		billTo.administrativeArea = "NH"
		billTo.country = "US"
		billTo.locality = "Clearwater milford"
		billTo.firstName = "James"
		billTo.lastName = "Smith"
		billTo.phoneNumber = "7606160717"
		billTo.email = "test@visa.com"
		billTo.postalCode = "03055"
		orderInformation.billTo = billTo
		requestObj.orderInformation = orderInformation

		deviceInformation = CyberSource::Riskv1decisionsDeviceInformation.new
		deviceInformation.cookiesAccepted = "yes"
		deviceInformation.ipAddress = "64.124.61.215"
		deviceInformation.hostName = "host.com"
		deviceInformation.httpBrowserEmail = "xyz@gmail.com"
		deviceInformation.userAgent = "Chrome"
		requestObj.deviceInformation = deviceInformation

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::DecisionManagerApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers# 46
# Code Generated: createDecisionManagerCase[DM with Device Information]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class DMwithDeviceInformation
    def run()
        requestObj = CyberSource::CreateDecisionManagerCaseRequest.new
        clientReferenceInformation = CyberSource::Riskv1decisionsClientReferenceInformation.new
        clientReferenceInformation.code = "54323007"
        requestObj.clientReferenceInformation = clientReferenceInformation

        paymentInformation = CyberSource::Riskv1decisionsPaymentInformation.new
        card = CyberSource::Riskv1decisionsPaymentInformationCard.new
        card.number = "4444444444444448"
        card.expirationMonth = "12"
        card.expirationYear = "2020"
        paymentInformation.card = card
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Riskv1decisionsOrderInformation.new
        amountDetails = CyberSource::Riskv1decisionsOrderInformationAmountDetails.new
        amountDetails.currency = "USD"
        amountDetails.totalAmount = "144.14"
        orderInformation.amountDetails = amountDetails
        billTo = CyberSource::Riskv1decisionsOrderInformationBillTo.new
        billTo.address1 = "96, powers street"
        billTo.administrativeArea = "NH"
        billTo.country = "US"
        billTo.locality = "Clearwater milford"
        billTo.firstName = "James"
        billTo.lastName = "Smith"
        billTo.phoneNumber = "7606160717"
        billTo.email = "test@visa.com"
        billTo.postalCode = "03055"
        orderInformation.billTo = billTo
        requestObj.orderInformation = orderInformation

        deviceInformation = CyberSource::Riskv1decisionsDeviceInformation.new
        deviceInformation.cookiesAccepted = "yes"
        deviceInformation.ipAddress = "64.124.61.215"
        deviceInformation.hostName = "host.com"
        deviceInformation.httpBrowserEmail = "xyz@gmail.com"
        deviceInformation.userAgent = "Chrome"
        requestObj.deviceInformation = deviceInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::DecisionManagerApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		DMwithDeviceInformation.new.run()
	end
end

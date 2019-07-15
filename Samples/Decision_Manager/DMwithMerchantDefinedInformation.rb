# 45
# Code Generated: createDecisionManagerCase[DM with Merchant Defined Information]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class DMwithMerchantDefinedInformation
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


		merchantDefinedInformation = []
		merchantDefinedInformation1 = Riskv1decisionsMerchantDefinedInformation()
		merchantDefinedInformation1.key = "1"
		merchantDefinedInformation1.value = "Test"
		merchantDefinedInformation << merchantDefinedInformation1

		merchantDefinedInformation2 = Riskv1decisionsMerchantDefinedInformation()
		merchantDefinedInformation2.key = "2"
		merchantDefinedInformation2.value = "Test2"
		merchantDefinedInformation << merchantDefinedInformation2

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::DecisionManagerApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers# 45
# Code Generated: createDecisionManagerCase[DM with Merchant Defined Information]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class DMwithMerchantDefinedInformation
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


        merchantDefinedInformation = []
        merchantDefinedInformation1 = Riskv1decisionsMerchantDefinedInformation()
        merchantDefinedInformation1.key = "1"
        merchantDefinedInformation1.value = "Test"
        merchantDefinedInformation << merchantDefinedInformation1

        merchantDefinedInformation2 = Riskv1decisionsMerchantDefinedInformation()
        merchantDefinedInformation2.key = "2"
        merchantDefinedInformation2.value = "Test2"
        merchantDefinedInformation << merchantDefinedInformation2

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::DecisionManagerApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		DMwithMerchantDefinedInformation.new.run()
	end
end

# 9
# Code Generated: createPayment[CyberSource MPOS - EMV]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class CyberSourceMPOSEMV
	def run()
		requestObj = CyberSource::CreatePaymentRequest.new
		clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
		clientReferenceInformation.code = "TC50171_16"
		requestObj.clientReferenceInformation = clientReferenceInformation

		processingInformation = CyberSource::Ptsv2paymentsProcessingInformation.new
		processingInformation.capture = False
		processingInformation.commerceIndicator = "retail"
		processingInformation.paymentSolution = "011"
		requestObj.processingInformation = processingInformation

		paymentInformation = CyberSource::Ptsv2paymentsPaymentInformation.new
		fluidData = CyberSource::Ptsv2paymentsPaymentInformationFluidData.new
		fluidData.descriptor = "EMV.PAYMENT.AnywhereCommerce.Walker"
		fluidData.value = "ewogICJkYXRhIiA6ICJOZmNwRURiK1dLdzBnQkpsaTRcL1hlWm1ITzdUSng0bnRoMnc2Mk9ITVJQK3hCRlFPdFE0WWpRcnY0RmFkOHh6VExqT2VFQm5iNHFzeGZMYTNyNXcxVEdXblFGQnNzMWtPYnA0XC95alNtVE1JSGVjbGc5OFROaEhNb0VRcjJkRkFqYVpBTFAxSlBsdVhKSVwvbTZKSmVwNGh3VHRWZE16Z2laSUhnaWFCYzNXZVd1ZnYzc1l0cGRaZDZYZENEUFdLeXFkYjBJdUtkdkpBPT0iLAogICJzaWduYXR1cmUiIDogIkFxck1pKzc0cm1GeVBKVE9HN3NuN2p5K1YxTlpBZUNJVE56TW01N1B5cmc9IiwKICAic2lnbmF0dXJlQWxnSW5mbyIgOiAiSE1BQ3dpdGhTSEEyNTYiLAogICJoZWFkZXIiIDogewogICAgInRyYW5zYWN0aW9uSWQiIDogIjE1MTU2MjI2NjIuMTcyMjIwIiwKICAgICJwdWJsaWNLZXlIYXNoIiA6ICJcLzdmdldqRVhMazJPRWpcL3Z5bk1jeEZvMmRWSTlpRXVoT2Nab0tHQnpGTmM9IiwKICAgICJhcHBsaWNhdGlvbkRhdGEiIDogIkN5YmVyU291cmNlLlZNcG9zS2l0IiwKICAgICJlcGhlbWVyYWxQdWJsaWNLZXkiIDogIk1Ga3dFd1lIS29aSXpqMENBUVlJS29aSXpqMERBUWNEUWdBRW1JN0tScnRNN2NNelk5Zmw2UWt2NEQzdE9jU0NYR1hoOFwvK2R4K2s5c1Zrbk05UFQrOXRqMzk2YWF6QjRcL0hYaWlLRW9DXC9jUzdoSzF6UFk3MVwvN0pUUT09IgogIH0sCiAgInZlcnNpb24iIDogIjEuMCIKfQ=="
		paymentInformation.fluidData = fluidData
		requestObj.paymentInformation = paymentInformation

		orderInformation = CyberSource::Ptsv2paymentsOrderInformation.new
		amountDetails = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
		amountDetails.totalAmount = "15.0"
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
		pointOfSaleInformation.catLevel = 1
		pointOfSaleInformation.entryMode = "contact"
		pointOfSaleInformation.terminalCapability = 1
		emv = CyberSource::Ptsv2paymentsPointOfSaleInformationEmv.new
		emv.fallback = True
		emv.fallbackCondition = 1
		pointOfSaleInformation.emv = emv
		requestObj.pointOfSaleInformation = pointOfSaleInformation

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::PaymentsApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers# 9
# Code Generated: createPayment[CyberSource MPOS - EMV]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class CyberSourceMPOSEMV
    def run()
        requestObj = CyberSource::CreatePaymentRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "TC50171_16"
        requestObj.clientReferenceInformation = clientReferenceInformation

        processingInformation = CyberSource::Ptsv2paymentsProcessingInformation.new
        processingInformation.capture = False
        processingInformation.commerceIndicator = "retail"
        processingInformation.paymentSolution = "011"
        requestObj.processingInformation = processingInformation

        paymentInformation = CyberSource::Ptsv2paymentsPaymentInformation.new
        fluidData = CyberSource::Ptsv2paymentsPaymentInformationFluidData.new
        fluidData.descriptor = "EMV.PAYMENT.AnywhereCommerce.Walker"
        fluidData.value = "ewogICJkYXRhIiA6ICJOZmNwRURiK1dLdzBnQkpsaTRcL1hlWm1ITzdUSng0bnRoMnc2Mk9ITVJQK3hCRlFPdFE0WWpRcnY0RmFkOHh6VExqT2VFQm5iNHFzeGZMYTNyNXcxVEdXblFGQnNzMWtPYnA0XC95alNtVE1JSGVjbGc5OFROaEhNb0VRcjJkRkFqYVpBTFAxSlBsdVhKSVwvbTZKSmVwNGh3VHRWZE16Z2laSUhnaWFCYzNXZVd1ZnYzc1l0cGRaZDZYZENEUFdLeXFkYjBJdUtkdkpBPT0iLAogICJzaWduYXR1cmUiIDogIkFxck1pKzc0cm1GeVBKVE9HN3NuN2p5K1YxTlpBZUNJVE56TW01N1B5cmc9IiwKICAic2lnbmF0dXJlQWxnSW5mbyIgOiAiSE1BQ3dpdGhTSEEyNTYiLAogICJoZWFkZXIiIDogewogICAgInRyYW5zYWN0aW9uSWQiIDogIjE1MTU2MjI2NjIuMTcyMjIwIiwKICAgICJwdWJsaWNLZXlIYXNoIiA6ICJcLzdmdldqRVhMazJPRWpcL3Z5bk1jeEZvMmRWSTlpRXVoT2Nab0tHQnpGTmM9IiwKICAgICJhcHBsaWNhdGlvbkRhdGEiIDogIkN5YmVyU291cmNlLlZNcG9zS2l0IiwKICAgICJlcGhlbWVyYWxQdWJsaWNLZXkiIDogIk1Ga3dFd1lIS29aSXpqMENBUVlJS29aSXpqMERBUWNEUWdBRW1JN0tScnRNN2NNelk5Zmw2UWt2NEQzdE9jU0NYR1hoOFwvK2R4K2s5c1Zrbk05UFQrOXRqMzk2YWF6QjRcL0hYaWlLRW9DXC9jUzdoSzF6UFk3MVwvN0pUUT09IgogIH0sCiAgInZlcnNpb24iIDogIjEuMCIKfQ=="
        paymentInformation.fluidData = fluidData
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Ptsv2paymentsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
        amountDetails.totalAmount = "15.0"
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
        pointOfSaleInformation.catLevel = 1
        pointOfSaleInformation.entryMode = "contact"
        pointOfSaleInformation.terminalCapability = 1
        emv = CyberSource::Ptsv2paymentsPointOfSaleInformationEmv.new
        emv.fallback = True
        emv.fallbackCondition = 1
        pointOfSaleInformation.emv = emv
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
		CyberSourceMPOSEMV.new.run()
	end
end

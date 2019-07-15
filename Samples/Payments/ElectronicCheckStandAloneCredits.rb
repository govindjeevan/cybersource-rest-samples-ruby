# 23
# Code Generated: createCredit[Electronic Check Stand-Alone Credits]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class ElectronicCheckStandAloneCredits
	def run()
		requestObj = CyberSource::CreateCreditRequest.new
		clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
		clientReferenceInformation.code = "TC46125-1"
		requestObj.clientReferenceInformation = clientReferenceInformation

		processingInformation = CyberSource::Ptsv2creditsProcessingInformation.new
		processingInformation.commerceIndicator = "internet"
		requestObj.processingInformation = processingInformation

		paymentInformation = CyberSource::Ptsv2paymentsidrefundsPaymentInformation.new
		bank = CyberSource::Ptsv2paymentsPaymentInformationBank.new
		account = CyberSource::Ptsv2paymentsPaymentInformationBankAccount.new
		account.type = "C"
		account.number = "4100"
		account.checkNumber = "123456"
		bank.account = account
		bank.routingNumber = "071923284"
		paymentInformation.bank = bank
		requestObj.paymentInformation = paymentInformation

		orderInformation = CyberSource::Ptsv2paymentsidrefundsOrderInformation.new
		amountDetails = CyberSource::Ptsv2paymentsidcapturesOrderInformationAmountDetails.new
		amountDetails.totalAmount = "100"
		amountDetails.currency = "USD"
		orderInformation.amountDetails = amountDetails
		billTo = CyberSource::Ptsv2paymentsidcapturesOrderInformationBillTo.new
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
		api_instance = CyberSource::CreditApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers# 23
# Code Generated: createCredit[Electronic Check Stand-Alone Credits]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class ElectronicCheckStandAloneCredits
    def run()
        requestObj = CyberSource::CreateCreditRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        clientReferenceInformation.code = "TC46125-1"
        requestObj.clientReferenceInformation = clientReferenceInformation

        processingInformation = CyberSource::Ptsv2creditsProcessingInformation.new
        processingInformation.commerceIndicator = "internet"
        requestObj.processingInformation = processingInformation

        paymentInformation = CyberSource::Ptsv2paymentsidrefundsPaymentInformation.new
        bank = CyberSource::Ptsv2paymentsPaymentInformationBank.new
        account = CyberSource::Ptsv2paymentsPaymentInformationBankAccount.new
        account.type = "C"
        account.number = "4100"
        account.checkNumber = "123456"
        bank.account = account
        bank.routingNumber = "071923284"
        paymentInformation.bank = bank
        requestObj.paymentInformation = paymentInformation

        orderInformation = CyberSource::Ptsv2paymentsidrefundsOrderInformation.new
        amountDetails = CyberSource::Ptsv2paymentsidcapturesOrderInformationAmountDetails.new
        amountDetails.totalAmount = "100"
        amountDetails.currency = "USD"
        orderInformation.amountDetails = amountDetails
        billTo = CyberSource::Ptsv2paymentsidcapturesOrderInformationBillTo.new
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
        api_instance = CyberSource::CreditApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		ElectronicCheckStandAloneCredits.new.run()
	end
end

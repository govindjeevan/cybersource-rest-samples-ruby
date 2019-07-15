# 58
# Code Generated: createPaymentInstrument[Create Payment Instrument (Bank Account)]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class CreatePaymentInstrumentBankAccount
	def run(profileid)
		requestObj = CyberSource::CreatePaymentInstrumentRequest.new
		bankAccount = CyberSource::Tmsv1paymentinstrumentsBankAccount.new
		bankAccount.type = "savings"
		requestObj.bankAccount = bankAccount

		buyerInformation = CyberSource::Tmsv1paymentinstrumentsBuyerInformation.new
		buyerInformation.companyTaxID = "12345"
		buyerInformation.currency = "USD"

		personalIdentification = []
		personalIdentification1 = Tmsv1paymentinstrumentsBuyerInformationPersonalIdentification()
		personalIdentification1.id = "57684432111321"
		personalIdentification1.type = "driver license"
		issuedBy1 = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedBuyerInformationIssuedBy.new
		issuedBy1.administrativeArea = "CA"
		personalIdentification1.issuedBy = issuedBy1
		personalIdentification << personalIdentification1

		buyerInformation.personalIdentification = personalIdentification
		requestObj.buyerInformation = buyerInformation

		billTo = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedBillTo.new
		billTo.firstName = "John"
		billTo.lastName = "Smith"
		billTo.company = "Cybersource"
		billTo.address1 = "8310 Capital of Texas Highwas North"
		billTo.address2 = "Bluffstone Drive"
		billTo.locality = "Austin"
		billTo.administrativeArea = "TX"
		billTo.postalCode = "78731"
		billTo.country = "United States"
		billTo.email = "john.smith@test.com"
		billTo.phoneNumber = "+44 2890447951"
		requestObj.billTo = billTo

		processingInformation = CyberSource::Tmsv1paymentinstrumentsProcessingInformation.new
		processingInformation.billPaymentProgramEnabled = True
		bankTransferOptions = CyberSource::Tmsv1paymentinstrumentsProcessingInformationBankTransferOptions.new
		bankTransferOptions.seCCode = "WEB"
		processingInformation.bankTransferOptions = bankTransferOptions
		requestObj.processingInformation = processingInformation

		merchantInformation = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedMerchantInformation.new
		merchantDescriptor = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedMerchantInformationMerchantDescriptor.new
		merchantDescriptor.alternateName = "Branch Name"
		merchantInformation.merchantDescriptor = merchantDescriptor
		requestObj.merchantInformation = merchantInformation

		instrumentIdentifier = CyberSource::Tmsv1paymentinstrumentsInstrumentIdentifier.new
		bankAccount = CyberSource::TmsV1InstrumentIdentifiersPost200ResponseBankAccount.new
		bankAccount.number = "4100"
		bankAccount.routingNumber = "071923284"
		instrumentIdentifier.bankAccount = bankAccount
		requestObj.instrumentIdentifier = instrumentIdentifier

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::PaymentInstrumentApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers
		print("Input parameter profile-id:")
		profileid = input()# 58
# Code Generated: createPaymentInstrument[Create Payment Instrument (Bank Account)]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class CreatePaymentInstrumentBankAccount
    def run(profileid)
        requestObj = CyberSource::CreatePaymentInstrumentRequest.new
        bankAccount = CyberSource::Tmsv1paymentinstrumentsBankAccount.new
        bankAccount.type = "savings"
        requestObj.bankAccount = bankAccount

        buyerInformation = CyberSource::Tmsv1paymentinstrumentsBuyerInformation.new
        buyerInformation.companyTaxID = "12345"
        buyerInformation.currency = "USD"

        personalIdentification = []
        personalIdentification1 = Tmsv1paymentinstrumentsBuyerInformationPersonalIdentification()
        personalIdentification1.id = "57684432111321"
        personalIdentification1.type = "driver license"
        issuedBy1 = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedBuyerInformationIssuedBy.new
        issuedBy1.administrativeArea = "CA"
        personalIdentification1.issuedBy = issuedBy1
        personalIdentification << personalIdentification1

        buyerInformation.personalIdentification = personalIdentification
        requestObj.buyerInformation = buyerInformation

        billTo = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedBillTo.new
        billTo.firstName = "John"
        billTo.lastName = "Smith"
        billTo.company = "Cybersource"
        billTo.address1 = "8310 Capital of Texas Highwas North"
        billTo.address2 = "Bluffstone Drive"
        billTo.locality = "Austin"
        billTo.administrativeArea = "TX"
        billTo.postalCode = "78731"
        billTo.country = "United States"
        billTo.email = "john.smith@test.com"
        billTo.phoneNumber = "+44 2890447951"
        requestObj.billTo = billTo

        processingInformation = CyberSource::Tmsv1paymentinstrumentsProcessingInformation.new
        processingInformation.billPaymentProgramEnabled = True
        bankTransferOptions = CyberSource::Tmsv1paymentinstrumentsProcessingInformationBankTransferOptions.new
        bankTransferOptions.seCCode = "WEB"
        processingInformation.bankTransferOptions = bankTransferOptions
        requestObj.processingInformation = processingInformation

        merchantInformation = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedMerchantInformation.new
        merchantDescriptor = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedMerchantInformationMerchantDescriptor.new
        merchantDescriptor.alternateName = "Branch Name"
        merchantInformation.merchantDescriptor = merchantDescriptor
        requestObj.merchantInformation = merchantInformation

        instrumentIdentifier = CyberSource::Tmsv1paymentinstrumentsInstrumentIdentifier.new
        bankAccount = CyberSource::TmsV1InstrumentIdentifiersPost200ResponseBankAccount.new
        bankAccount.number = "4100"
        bankAccount.routingNumber = "071923284"
        instrumentIdentifier.bankAccount = bankAccount
        requestObj.instrumentIdentifier = instrumentIdentifier

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::PaymentInstrumentApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers
        print("Input parameter profile-id:")
        profileid = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		CreatePaymentInstrumentBankAccount.new.run(profileid)
	end
end

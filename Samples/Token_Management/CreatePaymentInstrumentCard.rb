# 59
# Code Generated: createPaymentInstrument[Create Payment Instrument (Card)]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class CreatePaymentInstrumentCard
	def run(profileid)
		requestObj = CyberSource::CreatePaymentInstrumentRequest.new
		card = CyberSource::Tmsv1paymentinstrumentsCard.new
		card.expirationMonth = "09"
		card.expirationYear = "2017"
		card.type = "visa"
		card.issueNumber = "01"
		card.startMonth = "01"
		card.startYear = "2016"
		requestObj.card = card

		buyerInformation = CyberSource::Tmsv1paymentinstrumentsBuyerInformation.new
		buyerInformation.companyTaxID = "12345"
		buyerInformation.currency = "USD"
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
		requestObj.processingInformation = processingInformation

		instrumentIdentifier = CyberSource::Tmsv1paymentinstrumentsInstrumentIdentifier.new
		card = CyberSource::TmsV1InstrumentIdentifiersPost200ResponseCard.new
		card.number = "411111111111112"
		instrumentIdentifier.card = card
		requestObj.instrumentIdentifier = instrumentIdentifier

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::PaymentInstrumentApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers
		print("Input parameter profile-id:")
		profileid = input()# 59
# Code Generated: createPaymentInstrument[Create Payment Instrument (Card)]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class CreatePaymentInstrumentCard
    def run(profileid)
        requestObj = CyberSource::CreatePaymentInstrumentRequest.new
        card = CyberSource::Tmsv1paymentinstrumentsCard.new
        card.expirationMonth = "09"
        card.expirationYear = "2017"
        card.type = "visa"
        card.issueNumber = "01"
        card.startMonth = "01"
        card.startYear = "2016"
        requestObj.card = card

        buyerInformation = CyberSource::Tmsv1paymentinstrumentsBuyerInformation.new
        buyerInformation.companyTaxID = "12345"
        buyerInformation.currency = "USD"
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
        requestObj.processingInformation = processingInformation

        instrumentIdentifier = CyberSource::Tmsv1paymentinstrumentsInstrumentIdentifier.new
        card = CyberSource::TmsV1InstrumentIdentifiersPost200ResponseCard.new
        card.number = "411111111111112"
        instrumentIdentifier.card = card
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
		CreatePaymentInstrumentCard.new.run(profileid)
	end
end

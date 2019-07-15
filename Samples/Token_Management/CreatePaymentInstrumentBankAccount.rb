# 58
# Code Generated: createPaymentInstrument[Create Payment Instrument (Bank Account)]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class CreatePaymentInstrumentBankAccount
    def run(profileid)
        requestObj = CyberSource::CreatePaymentInstrumentRequest.new
        bank_account = CyberSource::Tmsv1paymentinstrumentsBankAccount.new
        bank_account.type = "savings"
        requestObj.bank_account = bank_account

        buyer_information = CyberSource::Tmsv1paymentinstrumentsBuyerInformation.new
        buyer_information.company_tax_i_d = "12345"
        buyer_information.currency = "USD"

        personal_identification = []
        personal_identification1 = Tmsv1paymentinstrumentsBuyerInformationPersonalIdentification()
        personal_identification1.id = "57684432111321"
        personal_identification1.type = "driver license"
        issued_by1 = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedBuyerInformationIssuedBy.new
        issued_by1.administrative_area = "CA"
        personal_identification1.issued_by = issued_by1
        personal_identification << personal_identification1

        buyer_information.personal_identification = personal_identification
        requestObj.buyer_information = buyer_information

        bill_to = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedBillTo.new
        bill_to.first_name = "John"
        bill_to.last_name = "Smith"
        bill_to.company = "Cybersource"
        bill_to.address1 = "8310 Capital of Texas Highwas North"
        bill_to.address2 = "Bluffstone Drive"
        bill_to.locality = "Austin"
        bill_to.administrative_area = "TX"
        bill_to.postal_code = "78731"
        bill_to.country = "United States"
        bill_to.email = "john.smith@test.com"
        bill_to.phone_number = "+44 2890447951"
        requestObj.bill_to = bill_to

        processing_information = CyberSource::Tmsv1paymentinstrumentsProcessingInformation.new
        processing_information.bill_payment_program_enabled = True
        bank_transfer_options = CyberSource::Tmsv1paymentinstrumentsProcessingInformationBankTransferOptions.new
        bank_transfer_options.se_c_code = "WEB"
        processing_information.bank_transfer_options = bank_transfer_options
        requestObj.processing_information = processing_information

        merchant_information = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedMerchantInformation.new
        merchant_descriptor = CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedMerchantInformationMerchantDescriptor.new
        merchant_descriptor.alternate_name = "Branch Name"
        merchant_information.merchant_descriptor = merchant_descriptor
        requestObj.merchant_information = merchant_information

        instrument_identifier = CyberSource::Tmsv1paymentinstrumentsInstrumentIdentifier.new
        bank_account = CyberSource::TmsV1InstrumentIdentifiersPost200ResponseBankAccount.new
        bank_account.number = "4100"
        bank_account.routing_number = "071923284"
        instrument_identifier.bank_account = bank_account
        requestObj.instrument_identifier = instrument_identifier

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

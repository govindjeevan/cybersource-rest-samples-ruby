# 54
# Code Generated: createPaymentInstrument[Create Payment Instrument (Card & Enroll for Network Token)]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class CreatePaymentInstrumentCardEnrollforNetworkToken
    def run(profileid)
        request_obj = CyberSource::CreatePaymentInstrumentRequest.new
        card = CyberSource::Tmsv1paymentinstrumentsCard.new
        card.expiration_month = "09"
        card.expiration_year = "2017"
        card.type = "visa"
        card.issue_number = "01"
        card.start_month = "01"
        card.start_year = "2016"
        request_obj.card = card

        buyer_information = CyberSource::Tmsv1paymentinstrumentsBuyerInformation.new
        buyer_information.company_tax_i_d = "12345"
        buyer_information.currency = "USD"
        request_obj.buyer_information = buyer_information

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
        request_obj.bill_to = bill_to

        processing_information = CyberSource::Tmsv1paymentinstrumentsProcessingInformation.new
        processing_information.bill_payment_program_enabled = TRUE
        request_obj.processing_information = processing_information

        instrument_identifier = CyberSource::Tmsv1paymentinstrumentsInstrumentIdentifier.new
        card = CyberSource::TmsV1InstrumentIdentifiersPost200ResponseCard.new
        card.number = "4622943127013705"
        instrument_identifier.card = card
        request_obj.instrument_identifier = instrument_identifier

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::PaymentInstrumentApi.new(api_client, config)

        data, status_code, headers = api_instance.create_payment_instrument( profileid, request_obj )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
        puts "Input parameter profile-id:"
        profileid = gets.chomp
		CreatePaymentInstrumentCardEnrollforNetworkToken.new.run(profileid)
	end
end

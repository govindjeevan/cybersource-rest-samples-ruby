# 49
# Code Generated: createInstrumentIdentifier[Create Instrument Identifier (Card & Enroll for Network Token)]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class CreateInstrumentIdentifierCardEnrollforNetworkToken
    def run(profileid)
        requestObj = CyberSource::CreateInstrumentIdentifierRequest.new
        requestObj.type = "enrollable card"
        card = CyberSource::Tmsv1instrumentidentifiersCard.new
        card.number = "4622943127013705"
        card.expiration_month = "12"
        card.expiration_year = "2022"
        card.security_code = "838"
        requestObj.card = card

        bill_to = CyberSource::Tmsv1instrumentidentifiersBillTo.new
        bill_to.address1 = "8310 Capital of Texas Highway North"
        bill_to.address2 = "Bluffstone Drive"
        bill_to.locality = "Austin"
        bill_to.administrative_area = "TX"
        bill_to.postal_code = "78731"
        bill_to.country = "US"
        requestObj.bill_to = bill_to

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::InstrumentIdentifierApi.new(api_client, config)

        data, status_code, headers = api_instance.create_instrument_identifier( profileid, requestObj )
        puts data, status_code, headers
        print("Input parameter profile-id:")
        profileid = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		CreateInstrumentIdentifierCardEnrollforNetworkToken.new.run(profileid)
	end
end

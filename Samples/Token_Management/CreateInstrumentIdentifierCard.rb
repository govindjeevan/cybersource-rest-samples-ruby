# 51
# Code Generated: createInstrumentIdentifier[Create Instrument Identifier (Card)]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class CreateInstrumentIdentifierCard
    def run(profileid)
        requestObj = CyberSource::CreateInstrumentIdentifierRequest.new
        card = CyberSource::Tmsv1instrumentidentifiersCard.new
        card.number = "411111111111112"
        requestObj.card = card

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
		CreateInstrumentIdentifierCard.new.run(profileid)
	end
end

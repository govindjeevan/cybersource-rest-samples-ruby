# 49
# Code Generated: createInstrumentIdentifier[Create Instrument Identifier (Card & Enroll for Network Token)]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class CreateInstrumentIdentifierCardEnrollforNetworkToken
    def run(profileid)
        requestObj = CyberSource::CreateInstrumentIdentifierRequest.new
        requestObj.type = "enrollable card"
        card = CyberSource::Tmsv1instrumentidentifiersCard.new
        card.number = "4622943127013705"
        card.expirationMonth = "12"
        card.expirationYear = "2022"
        card.securityCode = "838"
        requestObj.card = card

        billTo = CyberSource::Tmsv1instrumentidentifiersBillTo.new
        billTo.address1 = "8310 Capital of Texas Highway North"
        billTo.address2 = "Bluffstone Drive"
        billTo.locality = "Austin"
        billTo.administrativeArea = "TX"
        billTo.postalCode = "78731"
        billTo.country = "US"
        requestObj.billTo = billTo

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::InstrumentIdentifierApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
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

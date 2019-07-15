# 53
# Code Generated: getAllPaymentInstruments[Retrieve all Payment Instruments associated with an Instrument Identifier]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class RetrieveallPaymentInstrumentsassociatedwithanInstrumentIdentifier
    def run(profileid, tokenId)
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::InstrumentIdentifierApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers
        print("Input parameter profile-id:")
        profileid = input()
        print("Input parameter tokenId:")
        tokenId = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		RetrieveallPaymentInstrumentsassociatedwithanInstrumentIdentifier.new.run(profileid, tokenId)
	end
end

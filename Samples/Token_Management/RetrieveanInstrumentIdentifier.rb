# 52
# Code Generated: getInstrumentIdentifier[Retrieve an Instrument Identifier]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class RetrieveanInstrumentIdentifier
    def run(profileid, token_id)
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::InstrumentIdentifierApi.new(api_client, config)

        data, status_code, headers = api_instance.get_instrument_identifier( profileid, token_id )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
        puts "Input parameter profile-id:"
        profileid = gets.chomp
        puts "Input parameter tokenId:"
        tokenId = gets.chomp
		RetrieveanInstrumentIdentifier.new.run(profileid, tokenId)
	end
end

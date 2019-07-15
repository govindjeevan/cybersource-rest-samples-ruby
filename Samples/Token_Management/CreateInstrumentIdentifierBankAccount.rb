# 50
# Code Generated: createInstrumentIdentifier[Create Instrument Identifier (Bank Account)]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class CreateInstrumentIdentifierBankAccount
    def run(profileid)
        request_obj = CyberSource::CreateInstrumentIdentifierRequest.new
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::InstrumentIdentifierApi.new(api_client, config)

        data, status_code, headers = api_instance.create_instrument_identifier( profileid, request_obj )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
        puts "Input parameter profile-id:"
        profileid = gets.chomp
		CreateInstrumentIdentifierBankAccount.new.run(profileid)
	end
end

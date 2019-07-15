# 50
# Code Generated: createInstrumentIdentifier[Create Instrument Identifier (Bank Account)]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class CreateInstrumentIdentifierBankAccount
    def run(profileid)
        requestObj = CyberSource::CreateInstrumentIdentifierRequest.new
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
		CreateInstrumentIdentifierBankAccount.new.run(profileid)
	end
end

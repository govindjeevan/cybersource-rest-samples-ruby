# 1
# Code Generated: generatePublicKey[Generate Key]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class GenerateKey
    def run()
        requestObj = CyberSource::GeneratePublicKeyRequest.new
        requestObj.encryption_type = "RsaOaep256"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::KeyGenerationApi.new(api_client, config)

        data, status_code, headers = api_instance.generate_public_key( requestObj )
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		GenerateKey.new.run()
	end
end

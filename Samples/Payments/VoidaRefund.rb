# 25
# Code Generated: voidRefund[Void a Refund]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class VoidaRefund
	def run(id)
		requestObj = CyberSource::VoidRefundRequest.new
		clientReferenceInformation = CyberSource::Ptsv2paymentsidreversalsClientReferenceInformation.new
		clientReferenceInformation.code = "test_void"
		requestObj.clientReferenceInformation = clientReferenceInformation

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::VoidApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers
		print("Input parameter id:")
		id = input()# 25
# Code Generated: voidRefund[Void a Refund]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class VoidaRefund
    def run(id)
        requestObj = CyberSource::VoidRefundRequest.new
        clientReferenceInformation = CyberSource::Ptsv2paymentsidreversalsClientReferenceInformation.new
        clientReferenceInformation.code = "test_void"
        requestObj.clientReferenceInformation = clientReferenceInformation

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::VoidApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers
        print("Input parameter id:")
        id = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		VoidaRefund.new.run(id)
	end
end

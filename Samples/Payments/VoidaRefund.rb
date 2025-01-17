# 25
# Code Generated: voidRefund[Void a Refund]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class VoidaRefund
    def run(id)
        request_obj = CyberSource::VoidRefundRequest.new
        client_reference_information = CyberSource::Ptsv2paymentsidreversalsClientReferenceInformation.new
        client_reference_information.code = "test_void"
        request_obj.client_reference_information = client_reference_information

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::VoidApi.new(api_client, config)

        data, status_code, headers = api_instance.void_refund( request_obj, id )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
        puts "Input parameter id:"
        id = gets.chomp
		VoidaRefund.new.run(id)
	end
end

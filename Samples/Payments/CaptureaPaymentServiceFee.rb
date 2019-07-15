# 18
# Code Generated: capturePayment[Capture a Payment - Service Fee]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class CaptureaPaymentServiceFee
    def run(id)
        request_obj = CyberSource::CapturePaymentRequest.new
        client_reference_information = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        client_reference_information.code = "TC50171_3"
        request_obj.client_reference_information = client_reference_information

        order_information = CyberSource::Ptsv2paymentsidcapturesOrderInformation.new
        amount_details = CyberSource::Ptsv2paymentsidcapturesOrderInformationAmountDetails.new
        amount_details.total_amount = "2325.00"
        amount_details.currency = "USD"
        amount_details.service_fee_amount = "30.0"
        order_information.amount_details = amount_details
        request_obj.order_information = order_information

        merchant_information = CyberSource::Ptsv2paymentsidcapturesMerchantInformation.new
        service_fee_descriptor = CyberSource::Ptsv2paymentsMerchantInformationServiceFeeDescriptor.new
        service_fee_descriptor.name = "CyberVacations Service Fee"
        service_fee_descriptor.contact = "800-999-9999"
        service_fee_descriptor.state = "CA"
        merchant_information.service_fee_descriptor = service_fee_descriptor
        request_obj.merchant_information = merchant_information

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::CaptureApi.new(api_client, config)

        data, status_code, headers = api_instance.capture_payment( request_obj, id )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
        puts "Input parameter id:"
        id = gets.chomp
		CaptureaPaymentServiceFee.new.run(id)
	end
end

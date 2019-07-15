# 12
# Code Generated: createPayment[Payment Network Tokenization]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class PaymentNetworkTokenization
    def run()
        requestObj = CyberSource::CreatePaymentRequest.new
        client_reference_information = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        client_reference_information.code = "TC_123122"
        requestObj.client_reference_information = client_reference_information

        processing_information = CyberSource::Ptsv2paymentsProcessingInformation.new
        processing_information.capture = False
        processing_information.commerce_indicator = "internet"
        requestObj.processing_information = processing_information

        payment_information = CyberSource::Ptsv2paymentsPaymentInformation.new
        tokenized_card = CyberSource::Ptsv2paymentsPaymentInformationTokenizedCard.new
        tokenized_card.number = "4111111111111111"
        tokenized_card.expiration_month = "12"
        tokenized_card.expiration_year = "2031"
        tokenized_card.transaction_type = "1"
        payment_information.tokenized_card = tokenized_card
        requestObj.payment_information = payment_information

        order_information = CyberSource::Ptsv2paymentsOrderInformation.new
        amount_details = CyberSource::Ptsv2paymentsOrderInformationAmountDetails.new
        amount_details.total_amount = "100"
        amount_details.currency = "USD"
        order_information.amount_details = amount_details
        bill_to = CyberSource::Ptsv2paymentsOrderInformationBillTo.new
        bill_to.first_name = "John"
        bill_to.last_name = "Doe"
        bill_to.address1 = "1 Market St"
        bill_to.locality = "san francisco"
        bill_to.administrative_area = "CA"
        bill_to.postal_code = "94105"
        bill_to.country = "US"
        bill_to.email = "test@cybs.com"
        bill_to.phone_number = "4158880000"
        order_information.bill_to = bill_to
        requestObj.order_information = order_information

        consumer_authentication_information = CyberSource::Ptsv2paymentsConsumerAuthenticationInformation.new
        consumer_authentication_information.cavv = "AAABCSIIAAAAAAACcwgAEMCoNh+="
        consumer_authentication_information.xid = "T1Y0OVcxMVJJdkI0WFlBcXptUzE="
        requestObj.consumer_authentication_information = consumer_authentication_information

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::PaymentsApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		PaymentNetworkTokenization.new.run()
	end
end

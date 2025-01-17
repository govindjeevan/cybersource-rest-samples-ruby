# 22
# Code Generated: createCredit[Service Fees Credit]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class ServiceFeesCredit
    def run()
        request_obj = CyberSource::CreateCreditRequest.new
        client_reference_information = CyberSource::Ptsv2paymentsClientReferenceInformation.new
        client_reference_information.code = "12345678"
        request_obj.client_reference_information = client_reference_information

        payment_information = CyberSource::Ptsv2paymentsidrefundsPaymentInformation.new
        card = CyberSource::Ptsv2paymentsidrefundsPaymentInformationCard.new
        card.number = "4111111111111111"
        card.expiration_month = "03"
        card.expiration_year = "2031"
        payment_information.card = card
        request_obj.payment_information = payment_information

        order_information = CyberSource::Ptsv2paymentsidrefundsOrderInformation.new
        amount_details = CyberSource::Ptsv2paymentsidcapturesOrderInformationAmountDetails.new
        amount_details.total_amount = "2325.00"
        amount_details.currency = "usd"
        amount_details.service_fee_amount = "30.0"
        order_information.amount_details = amount_details
        bill_to = CyberSource::Ptsv2paymentsidcapturesOrderInformationBillTo.new
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
        request_obj.order_information = order_information

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::CreditApi.new(api_client, config)

        data, status_code, headers = api_instance.create_credit( request_obj )
        puts data, status_code, headers

    rescue StandardError => err
        puts err.message
    end
    if __FILE__ == $0
		ServiceFeesCredit.new.run()
	end
end

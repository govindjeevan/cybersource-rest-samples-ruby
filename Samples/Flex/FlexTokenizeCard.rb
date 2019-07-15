# 2
# Code Generated: tokenize[Flex Tokenize Card]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class FlexTokenizeCard
	def run()
		requestObj = CyberSource::TokenizeRequest.new
		requestObj.keyId = "08z9hCmn4pRpdNhPJBEYR3Mc2DGLWq5j"
		cardInfo = CyberSource::Flexv1tokensCardInfo.new
		cardInfo.cardNumber = "4111111111111111"
		cardInfo.cardExpirationMonth = "12"
		cardInfo.cardExpirationYear = "2031"
		cardInfo.cardType = "001"
		requestObj.cardInfo = cardInfo

		config = MerchantConfiguration.new.merchantConfigProp()
		api_client = CyberSource::ApiClient.new
		api_instance = CyberSource::TokenizationApi.new(api_client, config)

		data, status_code, headers = api_instance.null(request)
		puts data, status_code, headers# 2
# Code Generated: tokenize[Flex Tokenize Card]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class FlexTokenizeCard
    def run()
        requestObj = CyberSource::TokenizeRequest.new
        requestObj.keyId = "08z9hCmn4pRpdNhPJBEYR3Mc2DGLWq5j"
        cardInfo = CyberSource::Flexv1tokensCardInfo.new
        cardInfo.cardNumber = "4111111111111111"
        cardInfo.cardExpirationMonth = "12"
        cardInfo.cardExpirationYear = "2031"
        cardInfo.cardType = "001"
        requestObj.cardInfo = cardInfo

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::TokenizationApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		FlexTokenizeCard.new.run()
	end
end

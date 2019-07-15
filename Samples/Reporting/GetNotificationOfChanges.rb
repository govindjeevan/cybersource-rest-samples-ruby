# 36
# Code Generated: getNotificationOfChangeReport[Get Notification Of Changes]

require 'cybersource_rest_client'
require_relative '../VerifyToken.rb'
require_relative '../KeyGenerationNoEnc.rb'
require_relative '../../../data/Configuration.rb'

public
class GetNotificationOfChanges
    def run()
    startTime = "2018-05-01T12:00:00-05:00"
    endTime = "2018-05-30T12:00:00-05:00"
    opts = {}

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::NotificationOfChangesApi.new(api_client, config)

        data, status_code, headers = api_instance.null(request)
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		GetNotificationOfChanges.new.run()
	end
end

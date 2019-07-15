# 36
# Code Generated: getNotificationOfChangeReport[Get Notification Of Changes]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class GetNotificationOfChanges
    def run()
    start_time = "2018-05-01T12:00:00-05:00"
    end_time = "2018-05-30T12:00:00-05:00"
    opts = {}

        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::NotificationOfChangesApi.new(api_client, config)

        data, status_code, headers = api_instance.get_notification_of_change_report( start_time, end_time )
        puts data, status_code, headers

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		GetNotificationOfChanges.new.run()
	end
end

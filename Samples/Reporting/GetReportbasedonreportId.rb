# 31
# Code Generated: getReportByReportId[Get Report based on reportId]

require 'cybersource_rest_client'
require_relative '../../data/Configuration.rb'

public
class GetReportbasedonreportId
    def run(report_id)
    opts = {}

    opts[:"organization_id"] = "testrest"
        config = MerchantConfiguration.new.merchantConfigProp()
        api_client = CyberSource::ApiClient.new
        api_instance = CyberSource::ReportsApi.new(api_client, config)

        data, status_code, headers = api_instance.get_report_by_report_id( report_id,opts )
        puts data, status_code, headers
        print("Input parameter reportId:")
        reportId = input()

	rescue StandardError => err
		puts err.message
	end
	if __FILE__ == $0
		GetReportbasedonreportId.new.run(reportId)
	end
end

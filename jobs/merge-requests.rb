require 'net/http'
require 'uri'
require 'json'
require 'pp'

# TODO replace with a real production host
server = "http://localhost:9420"

SCHEDULER.every '90s', :first_in => 0 do |job|
  begin
	  url = URI.parse("#{server}/merge-requests")
	  http = Net::HTTP.new(url.host, url.port)
	  response = http.request(Net::HTTP::Get.new(url.request_uri))

	  # Convert to JSON
	  mergerequests = JSON[response.body]

		if mergerequests
			mergerequests = mergerequests.map do |mr|
				{ name: mr["projectName"], createdBy: mr["createdBy"], readyToMerge: mr["passed"]  }
			end
			send_event("merge-requests", { items: mergerequests })
		end
  rescue Exception => e
    puts e
  end
end

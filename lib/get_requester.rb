# Write your code here
require 'net/http'
 require 'open-uri'
 require 'json'

class GetRequester

    url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
        @url = url
    end
#Can be initiated by passing an URL
    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end
#get_response_body - an instnace method that
#sends a GET request to the URL and returns body or request
      def parse_json
        JSON.parse(get_response_body)
      end
#parse_json - an instance method that converts JSON from above method
#into RUby data structure using Parse method
end

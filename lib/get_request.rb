require 'net/http'
require 'open-uri'
require 'json'
require 'pry'


class GetRequest
    URL =  "http://www.omdbapi.com/?i=tt3896198&apikey=5c915f2f"
   def get_data
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri).body
   end

   def read_data
    data = JSON.parse(get_data)
        
   end
   
end


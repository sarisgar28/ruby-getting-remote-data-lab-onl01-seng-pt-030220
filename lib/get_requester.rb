# Write your code here
# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester 


    def initialize(url)
        @url = url 

    end 
    #uri = URI.parse(URL)
     #response = Net::HTTP.get_response(uri)
    #response.body
  

    def get_response_body
       uri = URI.parse(@url)
       response = Net::HTTP.get_response(uri) 
       response.body 
    end 

    def parse_json 
        get_respon = JSON.parse(self.get_response_body)
        get_respon.collect do |responses|
        responses
        end 
    end 
    #programs = JSON.parse(self.get_programs)
    #programs.collect do |program|
     # program["agency"]  
    #end

end 
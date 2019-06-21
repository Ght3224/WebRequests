require "http"   #allows to make web requests from ruby to internet 


p "city?!?"
user_input = gets.chomp 

response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{user_input}&APPID=3c5ca86e43da69165934538d21f7d9b")




p response.parse


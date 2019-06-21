require "http"   #allows to make web requests from ruby to internet 


while true 


  p "word?!?"
  user_input = gets.chomp

   if user_input == "quit"
    break 
  end 

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=8")



  body_of = response.parse

  body_of.each do |hash|
    p hash["text"]
    break
  end 




  p "________________________________________________"

  response2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/topExample?useCanonical=false&api_key=")




  body_of_2 = response2.parse 


  p body_of_2["text"]



  p "Pronunciations"
  p "______________________________________________________"
  response3 = HTTP.get("https://api.wordnik.com/v4/word.json/hippo/pronunciations?useCanonical=false&limit=50&api_key=")


  body_of_3 = response3.parse 


  body_of_3.each do |hash|
    p hash["raw"]
  end 



end 





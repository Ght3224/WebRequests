require "http"
require "ffaker"



response = HTTP.get("https://data.nashville.gov/resource/dqkw-tj5j.json")


all_the_art = response.parse

all_the_art.each do |art|
  p art ["title"]
end 


# Ffaker::Name.times do |faker|
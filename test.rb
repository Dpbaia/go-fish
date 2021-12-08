require 'json'
require 'open-uri'

url = 'https://www.fishwatch.gov/api/species'
fish_serialised = URI.open(url).read
fish = JSON.parse(fish_serialised)

# Will have to do a each do to get all the different species, this is just the first.

puts fish[0]["Habitat Impacts"].include?("trawl gear") # can use this for filtering?
puts fish[0]["NOAA Fisheries Region"] # use this to filter where a user can have an "aquarium"
puts fish[0]["Availability"] # once again can we use this for filtering? only can catch from the current time.
puts fish[0]["Health Benefits"]
puts fish[0]["Biology"]

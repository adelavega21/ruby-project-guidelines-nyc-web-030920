require 'pry'
require 'rest-client'
require 'json'

Movie.destroy_all
Actor.destroy_all
Genre.destroy_all
resp = RestClient.get("http://www.omdbapi.com/?i=tt3896198&apikey=5c915f2f")
data = JSON.parse(resp)
binding.pry



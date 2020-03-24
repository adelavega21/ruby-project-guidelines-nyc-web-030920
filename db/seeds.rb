require 'pry'
require 'rest-client'
require 'json'

Movie.destroy_all
Actor.destroy_all
Genre.destroy_all
resp = RestClient.get("https://api.themoviedb.org/3/movie/686050?api_key=f7aed4cdd4714e239a74cd8b6e37e07f")
data = JSON.parse(resp)
binding.pry



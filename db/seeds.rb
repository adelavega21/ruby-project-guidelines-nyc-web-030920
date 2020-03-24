require 'pry'
require 'rest-client'
require 'json'

Movie.destroy_all
Actor.destroy_all
Genre.destroy_all

latest = RestClient.get("https://api.themoviedb.org/3/movie/latest?api_key=f7aed4cdd4714e239a74cd8b6e37e07f")
latest_data = JSON.parse(latest)
latest_id = latest_data["id"]

genre = RestClient.get("https://api.themoviedb.org/3/genre/movie/list?api_key=f7aed4cdd4714e239a74cd8b6e37e07f&language=en-US")
genre_data = JSON.parse(genre)
genre_data["genres"].each do |genre|
    Genre.create(name: genre["name"])
end

i = 3 #movie counter
# while i < latest_id do #iterate through each movie in the database
    url = "https://api.themoviedb.org/3/movie/popular?api_key=f7aed4cdd4714e239a74cd8b6e37e07f"
resp = RestClient.get(url)
data = JSON.parse(resp)

data["results"].each do |movie|

    Movie.create(title: movie["title"], runtime: movie["runtime"],box_office: movie["revenue"])


        resp_actor = RestClient.get("https://api.themoviedb.org/3/movie/#{movie["id"].to_s}/credits?api_key=f7aed4cdd4714e239a74cd8b6e37e07f")
        actor_data = JSON.parse(resp_actor)

        actor_data["cast"].each do |actor|
                if !(Actor.names.include?(actor["name"]))
            Actor.create(name: actor["name"])
         end 
        end 
    end 
       


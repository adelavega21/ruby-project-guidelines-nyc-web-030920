class Movie < ActiveRecord::Base
    has_many :genre_movies
    has_many :genres, through: :genre_movies
    has_many :actor_movie
    has_many :actors, through: :actor_movie
    validates :title, presence: true 
end

#:year, :rated, :released, :runtime, :rating, :box_office,
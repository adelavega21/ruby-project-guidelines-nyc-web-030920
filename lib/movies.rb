class Movie < ActiveRecord::Base
    has_many :genre_movies
    has_many :genres, through: :genre_movies
    validates :title, presence: true 
end

#:year, :rated, :released, :runtime, :rating, :box_office,
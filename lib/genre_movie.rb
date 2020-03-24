class GenresMovie < ActiveRecord::Base
    belongs_to :movies 
    belongs_to :genres

    validates :genre_id, :movie_id, presence: true 
end
class Actor < ActiveRecord::Base
    has_many :actor_movie
    has_many :movies, through: :actor_movie
    validates :name, presence: true 
    def self.names
       Actor.all.map do |actor|
         actor.name
         end
       end
    end

    def genre_types
        Movies.all.select do |movie_object|
          if movie_object.actor == self 
              movie_object.genre
           end 
        end
    end

    def genre_count
        Movies.all.select do |movie_obj|
            if movie_obj.actor == self
            end
        end
    end
    


end 
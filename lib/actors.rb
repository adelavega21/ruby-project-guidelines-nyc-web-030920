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
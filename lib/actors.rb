class Actor < ActiveRecord::Base
    validates :name, presence: true 
    def self.names
       Actor.all.map do |actor|
         actor.name
        end
    end
end 
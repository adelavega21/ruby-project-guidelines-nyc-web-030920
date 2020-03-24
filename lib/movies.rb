class Movie < ActiveRecord::Base
    validates :title, presence: true 
end

#:year, :rated, :released, :runtime, :rating, :box_office,
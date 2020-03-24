class Movie < ActiveRecord::Base
    validates :title, :year, :rated, :released, :runtime, :rating, :box_office, presence: true 
end
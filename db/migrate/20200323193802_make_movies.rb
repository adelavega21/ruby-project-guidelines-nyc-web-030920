class MakeMovies < ActiveRecord::Migration[5.0]
  
      def change
      create_table :movies do |t|
          t.string :title
          t.integer :year
          t.string :rated
          t.datetime :released
          t.integer :runtime
          t.integer :rating
          t.integer :box_office
      end
    end
end

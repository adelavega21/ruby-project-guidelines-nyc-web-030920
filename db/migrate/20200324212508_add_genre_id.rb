class AddGenreId < ActiveRecord::Migration[5.0]
  def change
    add_column :genres, :genre_id, :integer
  end
end

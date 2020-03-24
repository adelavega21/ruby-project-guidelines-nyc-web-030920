class ActorMovie < ActiveRecord::Migration[5.0]
  def change
    create_table :actor_movie do |t|
      t.integer :actor_id
      t.integer :movie_id
    end
  end
end

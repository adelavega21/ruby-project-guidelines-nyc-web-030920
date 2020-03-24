class DropActorMovie < ActiveRecord::Migration[5.0]
    def change
      drop_table :actor_movie
    end
  end
  
class CreateSlots < ActiveRecord::Migration[6.1]
  def change
    create_table :slots do |t|
      t.integer :movie_id
      t.integer :screen_id
      t.time :slot_time
      t.integer :num_of_seats_booked

      t.references :movies, null: false, foreign_key: true
      t.references :screens

      t.timestamps
    end
  end
end

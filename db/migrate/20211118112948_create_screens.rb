class CreateScreens < ActiveRecord::Migration[6.1]
  def change
    create_table :screens do |t|
      t.integer :cinema_id
      t.integer :no_of_seats

      t.timestamps
    end
  end
end

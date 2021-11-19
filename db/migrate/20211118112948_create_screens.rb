class CreateScreens < ActiveRecord::Migration[6.1]
  def change
    create_table :screens do |t|
      t.integer :cinema_id
      t.integer :no_of_seats

      t.references :cinemas ,null: false, foreign_key: true

      t.timestamps
    end
  end
end

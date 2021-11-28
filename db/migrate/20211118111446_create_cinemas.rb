class CreateCinemas < ActiveRecord::Migration[6.1]
  def change
    create_table :cinemas do |t|
      t.string :name

      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end

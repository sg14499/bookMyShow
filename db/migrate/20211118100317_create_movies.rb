class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :language
      t.integer :duration
      t.date :release_date

      t.timestamps
    end
  end
end

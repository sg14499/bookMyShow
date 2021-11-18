class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :slot_id
      t.date :booking_date
      t.integer :total_cost

      t.timestamps
    end
  end
end

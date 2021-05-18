class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :duration
      t.string :address
      t.integer :status

      t.timestamps
    end
  end
end

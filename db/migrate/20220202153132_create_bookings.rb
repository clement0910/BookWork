class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end

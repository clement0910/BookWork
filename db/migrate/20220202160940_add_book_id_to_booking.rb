class AddBookIdToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :book_id, :integer
  end
end

class CheckBrouillon
  def call
    url = URI.open("https://www.la-permanence.com/services/meeting-rooms/bookings/listing?from_date=#{Date.today.day}%2F#{Date.today.month}%2F#{Date.today.year}&space_id=4").read
    bookings = JSON.parse(url)

    bookings.each do |booking|
      last_record = Booking.count
      Booking.create_with(start_at: DateTime.parse(booking["from"]), end_at: DateTime.parse(booking["to"])).find_or_create_by(book_id: booking["id"])
      if last_record != Booking.count
        ap "NEW BOOKING"
      else
        ap "NO NEW BOOKING YET"
      end
    end
  end
end

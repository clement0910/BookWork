class CheckNewBooking
  include Sidekiq::Worker

  def perform
    puts "HELLO WORLD"
  end
end

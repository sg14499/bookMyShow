# Preview all emails at http://localhost:3000/rails/mailers/book_mailer
class BookMailerPreview < ActionMailer::Preview
	def new_booking_email
    
    booking = Booking.new(slot_id: 1,booking_date: "25.12.2021",total_cost: 200)

    BookingMailer.with(booking: booking).new_booking_email
  end
end

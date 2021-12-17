class BookingMailer < ApplicationMailer
	def new_booking_email
		@booking = params[:booking]

		mail(to: @booking.user.email, subject: "You Book a new movie ticket!")
	end

end
